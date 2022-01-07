; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fec_platform_data* }
%struct.fec_platform_data = type { i32 (i32)* }

@FEC_R_CNTRL = common dso_local global i64 0, align 8
@FEC_X_CNTRL = common dso_local global i64 0, align 8
@FEC_IEVENT = common dso_local global i64 0, align 8
@FEC_ENET_GRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Graceful transmit stop did not complete!\0A\00", align 1
@FEC_WOL_FLAG_SLEEP_ON = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_AVB = common dso_local global i32 0, align 4
@FEC_ECNTRL = common dso_local global i64 0, align 8
@FEC_DEFAULT_IMASK = common dso_local global i32 0, align 4
@FEC_IMASK = common dso_local global i64 0, align 8
@FEC_ENET_WAKEUP = common dso_local global i32 0, align 4
@FEC_ECR_MAGICEN = common dso_local global i32 0, align 4
@FEC_ECR_SLEEP = common dso_local global i32 0, align 4
@FEC_MII_SPEED = common dso_local global i64 0, align 8
@FEC_QUIRK_ENET_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.fec_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.fec_platform_data*, %struct.fec_platform_data** %13, align 8
  store %struct.fec_platform_data* %14, %struct.fec_platform_data** %4, align 8
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FEC_R_CNTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = and i32 %20, 256
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FEC_X_CNTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 1, i64 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %35 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FEC_IEVENT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32, i32* @FEC_ENET_GRA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %26
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %26
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %49 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FEC_WOL_FLAG_SLEEP_ON, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %47
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FEC_QUIRK_HAS_AVB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %63 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FEC_ECNTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  br label %76

68:                                               ; preds = %54
  %69 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %70 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FEC_ECNTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 1, i64 %73)
  %75 = call i32 @udelay(i32 10)
  br label %76

76:                                               ; preds = %68, %61
  %77 = load i32, i32* @FEC_DEFAULT_IMASK, align 4
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FEC_IMASK, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %125

84:                                               ; preds = %47
  %85 = load i32, i32* @FEC_DEFAULT_IMASK, align 4
  %86 = load i32, i32* @FEC_ENET_WAKEUP, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %89 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FEC_IMASK, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %95 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FEC_ECNTRL, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @FEC_ECR_MAGICEN, align 4
  %101 = load i32, i32* @FEC_ECR_SLEEP, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %107 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FEC_ECNTRL, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.fec_platform_data*, %struct.fec_platform_data** %4, align 8
  %113 = icmp ne %struct.fec_platform_data* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %84
  %115 = load %struct.fec_platform_data*, %struct.fec_platform_data** %4, align 8
  %116 = getelementptr inbounds %struct.fec_platform_data, %struct.fec_platform_data* %115, i32 0, i32 0
  %117 = load i32 (i32)*, i32 (i32)** %116, align 8
  %118 = icmp ne i32 (i32)* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.fec_platform_data*, %struct.fec_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.fec_platform_data, %struct.fec_platform_data* %120, i32 0, i32 0
  %122 = load i32 (i32)*, i32 (i32)** %121, align 8
  %123 = call i32 %122(i32 1)
  br label %124

124:                                              ; preds = %119, %114, %84
  br label %125

125:                                              ; preds = %124, %76
  %126 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %127 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %130 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @FEC_MII_SPEED, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %136 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FEC_QUIRK_ENET_MAC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %125
  %142 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %143 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @FEC_WOL_FLAG_SLEEP_ON, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %141
  %149 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %150 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @FEC_ECNTRL, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 2, i64 %153)
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %157 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @FEC_R_CNTRL, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  br label %162

162:                                              ; preds = %148, %141, %125
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
