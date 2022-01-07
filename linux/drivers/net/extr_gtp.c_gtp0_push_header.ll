; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp0_push_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp0_push_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pdp_ctx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gtp0_header = type { i32, i32, i32*, i32, i8*, i8*, i8*, i32 }

@GTP_TPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.pdp_ctx*)* @gtp0_push_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtp0_push_header(%struct.sk_buff* %0, %struct.pdp_ctx* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.pdp_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gtp0_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.pdp_ctx* %1, %struct.pdp_ctx** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.gtp0_header* @skb_push(%struct.sk_buff* %10, i32 56)
  store %struct.gtp0_header* %11, %struct.gtp0_header** %6, align 8
  %12 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %13 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %12, i32 0, i32 0
  store i32 30, i32* %13, align 8
  %14 = load i32, i32* @GTP_TPDU, align 4
  %15 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %16 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %20 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.pdp_ctx*, %struct.pdp_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %21, i32 0, i32 1
  %23 = call i32 @atomic_inc_return(i32* %22)
  %24 = sub nsw i32 %23, 1
  %25 = srem i32 %24, 65535
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %28 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pdp_ctx*, %struct.pdp_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %36 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %38 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %37, i32 0, i32 1
  store i32 255, i32* %38, align 4
  %39 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %40 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 255, i32* %42, align 4
  %43 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %44 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 255, i32* %46, align 4
  %47 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %48 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 255, i32* %50, align 4
  %51 = load %struct.pdp_ctx*, %struct.pdp_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_be64(i32 %55)
  %57 = load %struct.gtp0_header*, %struct.gtp0_header** %6, align 8
  %58 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local %struct.gtp0_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
