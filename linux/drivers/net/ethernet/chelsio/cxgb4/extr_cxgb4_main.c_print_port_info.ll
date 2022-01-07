; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_print_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_print_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.TYPE_4__, %struct.adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FW_PORT_CAP32_SPEED_100M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"100M/\00", align 1
@FW_PORT_CAP32_SPEED_1G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1G/\00", align 1
@FW_PORT_CAP32_SPEED_10G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"10G/\00", align 1
@FW_PORT_CAP32_SPEED_25G = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"25G/\00", align 1
@FW_PORT_CAP32_SPEED_40G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"40G/\00", align 1
@FW_PORT_CAP32_SPEED_50G = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"50G/\00", align 1
@FW_PORT_CAP32_SPEED_100G = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"100G/\00", align 1
@FW_PORT_CAP32_SPEED_200G = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"200G/\00", align 1
@FW_PORT_CAP32_SPEED_400G = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"400G/\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"BASE-%s\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: Chelsio %s (%s) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @print_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_port_info(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8* %7, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %5, align 8
  %10 = load %struct.port_info*, %struct.port_info** %5, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 2
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.port_info*, %struct.port_info** %5, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FW_PORT_CAP32_SPEED_100M, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %4, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.port_info*, %struct.port_info** %5, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FW_PORT_CAP32_SPEED_1G, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.port_info*, %struct.port_info** %5, align 8
  %42 = getelementptr inbounds %struct.port_info, %struct.port_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FW_PORT_CAP32_SPEED_10G, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.port_info*, %struct.port_info** %5, align 8
  %56 = getelementptr inbounds %struct.port_info, %struct.port_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FW_PORT_CAP32_SPEED_25G, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8*, i8** %4, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.port_info*, %struct.port_info** %5, align 8
  %70 = getelementptr inbounds %struct.port_info, %struct.port_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FW_PORT_CAP32_SPEED_40G, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i8*, i8** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %76, %68
  %83 = load %struct.port_info*, %struct.port_info** %5, align 8
  %84 = getelementptr inbounds %struct.port_info, %struct.port_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FW_PORT_CAP32_SPEED_50G, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i8*, i8** %4, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.port_info*, %struct.port_info** %5, align 8
  %98 = getelementptr inbounds %struct.port_info, %struct.port_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FW_PORT_CAP32_SPEED_100G, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i8*, i8** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.port_info*, %struct.port_info** %5, align 8
  %112 = getelementptr inbounds %struct.port_info, %struct.port_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FW_PORT_CAP32_SPEED_200G, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i8*, i8** %4, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %4, align 8
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.port_info*, %struct.port_info** %5, align 8
  %126 = getelementptr inbounds %struct.port_info, %struct.port_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FW_PORT_CAP32_SPEED_400G, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i8*, i8** %4, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %4, align 8
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %141 = icmp ne i8* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %4, align 8
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i8*, i8** %4, align 8
  %147 = load %struct.port_info*, %struct.port_info** %5, align 8
  %148 = getelementptr inbounds %struct.port_info, %struct.port_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @t4_get_port_type_description(i32 %149)
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %150)
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.adapter*, %struct.adapter** %6, align 8
  %157 = getelementptr inbounds %struct.adapter, %struct.adapter* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.adapter*, %struct.adapter** %6, align 8
  %162 = getelementptr inbounds %struct.adapter, %struct.adapter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %165 = call i32 @netdev_info(%struct.net_device* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %155, i32 %160, i32 %163, i8* %164)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @t4_get_port_type_description(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
