; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_ping_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_ping_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@TD_LS = common dso_local global i32 0, align 4
@TD_FS = common dso_local global i32 0, align 4
@POLL_DEMAND = common dso_local global i32 0, align 4
@DE4X5_TPD = common dso_local global i32 0, align 4
@DE4X5_SISR = common dso_local global i32 0, align 4
@SISR_NCR = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@T_OWN = common dso_local global i32 0, align 4
@TD_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ping_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ping_media(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de4x5_private* %9, %struct.de4x5_private** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %14 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 100
  %20 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %21 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %26 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TD_LS, align 4
  %32 = load i32, i32* @TD_FS, align 4
  %33 = or i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = or i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @load_packet(%struct.net_device* %27, i32 %30, i32 %36, %struct.sk_buff* inttoptr (i64 1 to %struct.sk_buff*))
  %38 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %39 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = urem i64 %41, %45
  %47 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %48 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @POLL_DEMAND, align 4
  %50 = load i32, i32* @DE4X5_TPD, align 4
  %51 = call i32 @outl(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %17, %2
  %53 = load i32, i32* @DE4X5_SISR, align 4
  %54 = call i32 @inl(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SISR_NCR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %52
  %60 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %61 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %74 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @TIMER_CB, align 4
  %80 = or i32 100, %79
  store i32 %80, i32* %7, align 4
  br label %112

81:                                               ; preds = %72, %59, %52
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SISR_NCR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %81
  %87 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %88 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %91 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = load i32, i32* @T_OWN, align 4
  %98 = load i32, i32* @TD_ES, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %86
  %103 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %104 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %109

108:                                              ; preds = %102, %86, %81
  store i32 1, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %111 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %110, i32 0, i32 0
  store i32 -1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %78
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @load_packet(%struct.net_device*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
