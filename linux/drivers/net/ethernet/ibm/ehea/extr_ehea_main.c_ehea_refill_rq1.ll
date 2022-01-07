; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_refill_rq1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_refill_rq1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@__EHEA_STOP_XFER = common dso_local global i32 0, align 4
@ehea_driver_flags = common dso_local global i32 0, align 4
@EHEA_L_PKT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port_res*, i32, i32)* @ehea_refill_rq1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_refill_rq1(%struct.ehea_port_res* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %14 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %15, align 8
  store %struct.sk_buff** %16, %struct.sk_buff*** %7, align 8
  %17 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %18 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  %22 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %23 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %28 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %33 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %34 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @__EHEA_STOP_XFER, align 4
  %37 = call i32 @test_bit(i32 %36, i32* @ehea_driver_flags)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %46 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %51 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  br label %108

53:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %95, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %59, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %87, label %65

65:                                               ; preds = %58
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = load i32, i32* @EHEA_L_PKT_SIZE, align 4
  %68 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %66, i32 %67)
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %69, i64 %71
  store %struct.sk_buff* %68, %struct.sk_buff** %72, align 8
  %73 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %73, i64 %75
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %84 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %98

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %54

98:                                               ; preds = %79, %54
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %108

102:                                              ; preds = %98
  %103 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %104 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ehea_update_rq1a(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %101, %48
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_update_rq1a(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
