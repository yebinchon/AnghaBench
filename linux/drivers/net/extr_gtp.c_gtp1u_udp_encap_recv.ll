; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp1u_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp1u_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtp_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.gtp1_header = type { i32, i64, i32 }
%struct.pdp_ctx = type { i32 }

@GTP_V1 = common dso_local global i32 0, align 4
@GTP_TPDU = common dso_local global i64 0, align 8
@GTP1_F_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No PDP ctx to decap skb=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtp_dev*, %struct.sk_buff*)* @gtp1u_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp1u_udp_encap_recv(%struct.gtp_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gtp_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gtp1_header*, align 8
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
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 4
  %19 = inttoptr i64 %18 to %struct.gtp1_header*
  store %struct.gtp1_header* %19, %struct.gtp1_header** %7, align 8
  %20 = load %struct.gtp1_header*, %struct.gtp1_header** %7, align 8
  %21 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 5
  %24 = load i32, i32* @GTP_V1, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %78

27:                                               ; preds = %14
  %28 = load %struct.gtp1_header*, %struct.gtp1_header** %7, align 8
  %29 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GTP_TPDU, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %78

34:                                               ; preds = %27
  %35 = load %struct.gtp1_header*, %struct.gtp1_header** %7, align 8
  %36 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GTP1_F_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pskb_may_pull(%struct.sk_buff* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %78

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 4
  %55 = inttoptr i64 %54 to %struct.gtp1_header*
  store %struct.gtp1_header* %55, %struct.gtp1_header** %7, align 8
  %56 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %57 = load %struct.gtp1_header*, %struct.gtp1_header** %7, align 8
  %58 = getelementptr inbounds %struct.gtp1_header, %struct.gtp1_header* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ntohl(i32 %59)
  %61 = call %struct.pdp_ctx* @gtp1_pdp_find(%struct.gtp_dev* %56, i32 %60)
  store %struct.pdp_ctx* %61, %struct.pdp_ctx** %8, align 8
  %62 = load %struct.pdp_ctx*, %struct.pdp_ctx** %8, align 8
  %63 = icmp ne %struct.pdp_ctx* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %50
  %65 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %66 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @netdev_dbg(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %68)
  store i32 1, i32* %3, align 4
  br label %78

70:                                               ; preds = %50
  %71 = load %struct.pdp_ctx*, %struct.pdp_ctx** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %75 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gtp_rx(%struct.pdp_ctx* %71, %struct.sk_buff* %72, i32 %73, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %64, %49, %33, %26, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pdp_ctx* @gtp1_pdp_find(%struct.gtp_dev*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @gtp_rx(%struct.pdp_ctx*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
