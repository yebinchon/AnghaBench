; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32 }
%struct.greth_private = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GRETH_CTRL_FD = common dso_local global i32 0, align 4
@GRETH_CTRL_SP = common dso_local global i32 0, align 4
@GRETH_CTRL_GB = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s: link up (%d/%s)\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @greth_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greth_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.greth_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.greth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.greth_private* %9, %struct.greth_private** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %14 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %13, i32 0, i32 3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %99

21:                                               ; preds = %1
  %22 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %23 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %31 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %29, %21
  %38 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %39 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GRETH_REGLOAD(i32 %42)
  %44 = load i32, i32* @GRETH_CTRL_FD, align 4
  %45 = load i32, i32* @GRETH_CTRL_SP, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @GRETH_CTRL_GB, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %43, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load i32, i32* @GRETH_CTRL_FD, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %37
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SPEED_100, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @GRETH_CTRL_SP, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %80

69:                                               ; preds = %59
  %70 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPEED_1000, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @GRETH_CTRL_GB, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %82 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @GRETH_REGSAVE(i32 %85, i32 %86)
  %88 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %92 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %97 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %80, %29
  br label %99

99:                                               ; preds = %98, %1
  %100 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %104 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %99
  %108 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %114 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %116 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %119 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %122 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %117, %99
  %124 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %125 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %124, i32 0, i32 3
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %123
  %131 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %132 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %140 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DUPLEX_FULL, align 8
  %143 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %144 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = icmp eq i64 %142, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %150 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %138, i64 %141, i8* %149)
  br label %156

151:                                              ; preds = %130
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %151, %135
  br label %157

157:                                              ; preds = %156, %123
  ret void
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
