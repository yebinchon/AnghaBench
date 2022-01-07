; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp0_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp0_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtp_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.gtp0_header = type { i32, i64, i32 }
%struct.pdp_ctx = type { i32 }

@GTP_V0 = common dso_local global i32 0, align 4
@GTP_TPDU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"No PDP ctx to decap skb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtp_dev*, %struct.sk_buff*)* @gtp0_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp0_udp_encap_recv(%struct.gtp_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gtp_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gtp0_header*, align 8
  %8 = alloca %struct.pdp_ctx*, align 8
  store %struct.gtp_dev* %0, %struct.gtp_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 28, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @pskb_may_pull(%struct.sk_buff* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 4
  %19 = inttoptr i64 %18 to %struct.gtp0_header*
  store %struct.gtp0_header* %19, %struct.gtp0_header** %7, align 8
  %20 = load %struct.gtp0_header*, %struct.gtp0_header** %7, align 8
  %21 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 5
  %24 = load i32, i32* @GTP_V0, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %57

27:                                               ; preds = %14
  %28 = load %struct.gtp0_header*, %struct.gtp0_header** %7, align 8
  %29 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GTP_TPDU, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %36 = load %struct.gtp0_header*, %struct.gtp0_header** %7, align 8
  %37 = getelementptr inbounds %struct.gtp0_header, %struct.gtp0_header* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = call %struct.pdp_ctx* @gtp0_pdp_find(%struct.gtp_dev* %35, i32 %39)
  store %struct.pdp_ctx* %40, %struct.pdp_ctx** %8, align 8
  %41 = load %struct.pdp_ctx*, %struct.pdp_ctx** %8, align 8
  %42 = icmp ne %struct.pdp_ctx* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %45 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @netdev_dbg(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %47)
  store i32 1, i32* %3, align 4
  br label %57

49:                                               ; preds = %34
  %50 = load %struct.pdp_ctx*, %struct.pdp_ctx** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %54 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gtp_rx(%struct.pdp_ctx* %50, %struct.sk_buff* %51, i32 %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %43, %33, %26, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pdp_ctx* @gtp0_pdp_find(%struct.gtp_dev*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @gtp_rx(%struct.pdp_ctx*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
