; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_init_mii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_init_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.local_info = type { i32, i64 }

@if_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't take PHY out of isolation mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"autonegotiation failed; using 10mbs\0A\00", align 1
@XIRCREG_ESR = common dso_local global i32 0, align 4
@MediaSelect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"MII link partner: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mii(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.local_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.local_info* @netdev_priv(%struct.net_device* %10)
  store %struct.local_info* %11, %struct.local_info** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @if_port, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @if_port, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @if_port, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.local_info*, %struct.local_info** %4, align 8
  %25 = getelementptr inbounds %struct.local_info, %struct.local_info* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  store i32 1, i32* %2, align 4
  br label %138

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mii_rd(i32 %27, i32 0, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65280
  %31 = icmp ne i32 %30, 30720
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %138

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mii_rd(i32 %34, i32 0, i32 2)
  %36 = icmp ne i32 %35, 65535
  %37 = zext i1 %36 to i32
  %38 = load %struct.local_info*, %struct.local_info** %4, align 8
  %39 = getelementptr inbounds %struct.local_info, %struct.local_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.local_info*, %struct.local_info** %4, align 8
  %41 = getelementptr inbounds %struct.local_info, %struct.local_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 4096, i32* %6, align 4
  br label %53

45:                                               ; preds = %33
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 8192, i32* %6, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mii_wr(i32 %54, i32 0, i32 0, i32 %55, i32 16)
  %57 = call i32 @udelay(i32 100)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mii_rd(i32 %58, i32 0, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 1024
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @netdev_notice(%struct.net_device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.local_info*, %struct.local_info** %4, align 8
  %67 = getelementptr inbounds %struct.local_info, %struct.local_info* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  store i32 0, i32* %2, align 4
  br label %138

68:                                               ; preds = %53
  %69 = load %struct.local_info*, %struct.local_info** %4, align 8
  %70 = getelementptr inbounds %struct.local_info, %struct.local_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 35
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = call i32 @msleep(i32 100)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mii_rd(i32 %79, i32 0, i32 1)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %93

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %74

93:                                               ; preds = %88, %74
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %120, label %97

97:                                               ; preds = %93
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.local_info*, %struct.local_info** %4, align 8
  %101 = getelementptr inbounds %struct.local_info, %struct.local_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @mii_wr(i32 %105, i32 0, i32 0, i32 %106, i32 16)
  %108 = call i32 @udelay(i32 100)
  %109 = call i32 @SelectPage(i32 0)
  %110 = load i32, i32* @XIRCREG_ESR, align 4
  %111 = call i32 @GetByte(i32 %110)
  %112 = load i32, i32* @MediaSelect, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 2
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %104, %97
  br label %136

120:                                              ; preds = %93
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @mii_rd(i32 %121, i32 0, i32 5)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 128
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 1
  store i32 4, i32* %131, align 4
  br label %135

132:                                              ; preds = %120
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %119
  br label %137

137:                                              ; preds = %136, %68
  store i32 1, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %63, %32, %20
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

declare dso_local i32 @mii_wr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @GetByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
