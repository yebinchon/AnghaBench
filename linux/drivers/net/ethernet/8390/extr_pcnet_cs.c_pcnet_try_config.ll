; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_try_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_try_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_info = type { i32 }
%struct.pcmcia_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__**, i64, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32, i64 }
%struct.pcnet_dev = type { i32 }

@pcnet_confcheck = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no useable port range found\0A\00", align 1
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@MANFID_IBM = common dso_local global i32 0, align 4
@PRODID_IBM_HOME_AND_AWAY = common dso_local global i32 0, align 4
@HAS_MISC_REG = common dso_local global i32 0, align 4
@if_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid if_port requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"this is an AX88190 card - use axnet_cs instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hw_info* (%struct.pcmcia_device*, i32*, i32)* @pcnet_try_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hw_info* @pcnet_try_config(%struct.pcmcia_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hw_info*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.hw_info*, align 8
  %10 = alloca %struct.pcnet_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 8
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %16)
  store %struct.pcnet_dev* %17, %struct.pcnet_dev** %10, align 8
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %20 = load i32, i32* @pcnet_confcheck, align 4
  %21 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %19, i32 %20, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %26 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %25, i32 0, i32 4
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.hw_info* null, %struct.hw_info** %4, align 8
  br label %160

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 16
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store %struct.hw_info* null, %struct.hw_info** %4, align 8
  br label %160

37:                                               ; preds = %28
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @resource_size(%struct.TYPE_2__* %42)
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MANFID_IBM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PRODID_IBM_HOME_AND_AWAY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %65 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, 16
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %57, %51
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %70 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store %struct.hw_info* null, %struct.hw_info** %4, align 8
  br label %160

74:                                               ; preds = %68
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %8, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.net_device*, %struct.net_device** %8, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pcnet_dev*, %struct.pcnet_dev** %10, align 8
  %90 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HAS_MISC_REG, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %74
  %96 = load i32, i32* @if_port, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @if_port, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %105

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @if_port, align 4
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %98
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %106, i32 0, i32 4
  %108 = call i32 @dev_notice(i32* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %101
  br label %113

110:                                              ; preds = %74
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %115 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 960
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %120 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 329
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %125 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 49579
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %130 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %129, i32 0, i32 4
  %131 = call i32 @dev_info(i32* %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store %struct.hw_info* null, %struct.hw_info** %4, align 8
  br label %160

132:                                              ; preds = %123, %118, %113
  %133 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %134 = call %struct.hw_info* @get_hwinfo(%struct.pcmcia_device* %133)
  store %struct.hw_info* %134, %struct.hw_info** %9, align 8
  %135 = load %struct.hw_info*, %struct.hw_info** %9, align 8
  %136 = icmp ne %struct.hw_info* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %139 = call %struct.hw_info* @get_prom(%struct.pcmcia_device* %138)
  store %struct.hw_info* %139, %struct.hw_info** %9, align 8
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.hw_info*, %struct.hw_info** %9, align 8
  %142 = icmp ne %struct.hw_info* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %145 = call %struct.hw_info* @get_dl10019(%struct.pcmcia_device* %144)
  store %struct.hw_info* %145, %struct.hw_info** %9, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.hw_info*, %struct.hw_info** %9, align 8
  %148 = icmp ne %struct.hw_info* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %151 = call %struct.hw_info* @get_ax88190(%struct.pcmcia_device* %150)
  store %struct.hw_info* %151, %struct.hw_info** %9, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.hw_info*, %struct.hw_info** %9, align 8
  %154 = icmp ne %struct.hw_info* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %157 = call %struct.hw_info* @get_hwired(%struct.pcmcia_device* %156)
  store %struct.hw_info* %157, %struct.hw_info** %9, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.hw_info*, %struct.hw_info** %9, align 8
  store %struct.hw_info* %159, %struct.hw_info** %4, align 8
  br label %160

160:                                              ; preds = %158, %128, %73, %36, %24
  %161 = load %struct.hw_info*, %struct.hw_info** %4, align 8
  ret %struct.hw_info* %161
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.hw_info* @get_hwinfo(%struct.pcmcia_device*) #1

declare dso_local %struct.hw_info* @get_prom(%struct.pcmcia_device*) #1

declare dso_local %struct.hw_info* @get_dl10019(%struct.pcmcia_device*) #1

declare dso_local %struct.hw_info* @get_ax88190(%struct.pcmcia_device*) #1

declare dso_local %struct.hw_info* @get_hwired(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
