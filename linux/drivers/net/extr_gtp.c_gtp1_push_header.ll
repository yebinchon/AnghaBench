; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp1_push_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp1_push_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pdp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gtp1_header = type { i32, i32, i32, i32 }

@GTP_TPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.pdp_ctx*)* @gtp1_push_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtp1_push_header(%struct.sk_buff* %0, %struct.pdp_ctx* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.pdp_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gtp1_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.pdp_ctx* %1, %struct.pdp_ctx** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.gtp1_header* @skb_push(%struct.sk_buff* %10, i32 16)
  store %struct.gtp1_header* %11, %struct.gtp1_header** %6, align 8
  %12 = load %struct.gtp1_header*, %struct.gtp1_header** %6, align 8
  %13 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %12, i32 0, i32 0
  store i32 48, i32* %13, align 4
  %14 = load i32, i32* @GTP_TPDU, align 4
  %15 = load %struct.gtp1_header*, %struct.gtp1_header** %6, align 8
  %16 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = load %struct.gtp1_header*, %struct.gtp1_header** %6, align 8
  %20 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pdp_ctx*, %struct.pdp_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.gtp1_header*, %struct.gtp1_header** %6, align 8
  %28 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.gtp1_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
