; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_triggers_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_led_triggers.c_phy_led_triggers_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_9__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_led_triggers_register(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [50 x i32], align 16
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = call i32 @phy_supported_speeds(%struct.phy_device* %7, i32* %8, i32 %10)
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_9__* @devm_kzalloc(i32* %22, i32 8, i32 %23)
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %146

34:                                               ; preds = %19
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @phy_led_trigger_format_name(%struct.phy_device* %35, i32 %40, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @led_trigger_register(%struct.TYPE_10__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %34
  br label %136

60:                                               ; preds = %34
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.TYPE_9__* @devm_kcalloc(i32* %63, i32 %66, i32 4, i32 %67)
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %69, i32 0, i32 3
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %131

78:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @phy_led_trigger_register(%struct.phy_device* %86, %struct.TYPE_9__* %92, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %110

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %79

105:                                              ; preds = %79
  %106 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %107 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %109 = call i32 @phy_led_trigger_change_speed(%struct.phy_device* %108)
  store i32 0, i32* %2, align 4
  br label %150

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %115, %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %4, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = call i32 @phy_led_trigger_unregister(%struct.TYPE_9__* %121)
  br label %111

123:                                              ; preds = %111
  %124 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %128 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %127, i32 0, i32 3
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = call i32 @devm_kfree(i32* %126, %struct.TYPE_9__* %129)
  br label %131

131:                                              ; preds = %123, %75
  %132 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %133 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = call i32 @phy_led_trigger_unregister(%struct.TYPE_9__* %134)
  br label %136

136:                                              ; preds = %131, %59
  %137 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %141 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = call i32 @devm_kfree(i32* %139, %struct.TYPE_9__* %142)
  %144 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %145 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %144, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %145, align 8
  br label %146

146:                                              ; preds = %136, %31
  %147 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %148 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %105, %18
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @phy_supported_speeds(%struct.phy_device*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_9__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @phy_led_trigger_format_name(%struct.phy_device*, i32, i32, i8*) #1

declare dso_local i32 @led_trigger_register(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @phy_led_trigger_register(%struct.phy_device*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @phy_led_trigger_change_speed(%struct.phy_device*) #1

declare dso_local i32 @phy_led_trigger_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
