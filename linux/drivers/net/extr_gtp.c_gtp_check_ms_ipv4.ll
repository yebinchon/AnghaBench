; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_check_ms_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_check_ms_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.pdp_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iphdr = type { i64, i64 }

@GTP_ROLE_SGSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.pdp_ctx*, i32, i32)* @gtp_check_ms_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_check_ms_ipv4(%struct.sk_buff* %0, %struct.pdp_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.pdp_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.pdp_ctx* %1, %struct.pdp_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 16
  %15 = trunc i64 %14 to i32
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = inttoptr i64 %25 to %struct.iphdr*
  store %struct.iphdr* %26, %struct.iphdr** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GTP_ROLE_SGSN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pdp_ctx*, %struct.pdp_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %50

40:                                               ; preds = %19
  %41 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pdp_ctx*, %struct.pdp_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %40, %30, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
