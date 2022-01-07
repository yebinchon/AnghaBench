; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_init_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_init_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64*, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.em28xx_button* }
%struct.em28xx_button = type { i64, i64, i32 }

@EM28XX_BUTTONS_DEBOUNCED_QUERY_INTERVAL = common dso_local global i32 0, align 4
@EM28XX_NUM_BUTTON_ROLES = common dso_local global i64 0, align 8
@EM28XX_NUM_BUTTON_ADDRESSES_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"BUG: maximum number of button polling addresses exceeded.\00", align 1
@EM28XX_BUTTON_SNAPSHOT = common dso_local global i64 0, align 8
@EM28XX_BUTTON_ILLUMINATION = common dso_local global i64 0, align 8
@EM28XX_LED_ILLUMINATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"BUG: illumination button defined, but no illumination LED.\0A\00", align 1
@EM28XX_BUTTONS_VOLATILE_QUERY_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_init_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_init_buttons(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx_button*, align 8
  %7 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @EM28XX_BUTTONS_DEBOUNCED_QUERY_INTERVAL, align 4
  %9 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  br label %11

11:                                               ; preds = %136, %1
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.em28xx_button*, %struct.em28xx_button** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %15, i64 %16
  %18 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.em28xx_button*, %struct.em28xx_button** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %25, i64 %26
  %28 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EM28XX_NUM_BUTTON_ROLES, align 8
  %31 = icmp slt i64 %29, %30
  br label %32

32:                                               ; preds = %21, %11
  %33 = phi i1 [ false, %11 ], [ %31, %21 ]
  br i1 %33, label %34, label %139

34:                                               ; preds = %32
  %35 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.em28xx_button*, %struct.em28xx_button** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %38, i64 %39
  store %struct.em28xx_button* %40, %struct.em28xx_button** %6, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %60, %34
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %44 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.em28xx_button*, %struct.em28xx_button** %6, align 8
  %49 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %52 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %63

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %41

63:                                               ; preds = %58, %41
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EM28XX_NUM_BUTTON_ADDRESSES_MAX, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %136

74:                                               ; preds = %66, %63
  %75 = load %struct.em28xx_button*, %struct.em28xx_button** %6, align 8
  %76 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EM28XX_BUTTON_SNAPSHOT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %82 = call i64 @em28xx_register_snapshot_button(%struct.em28xx* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %136

85:                                               ; preds = %80
  br label %105

86:                                               ; preds = %74
  %87 = load %struct.em28xx_button*, %struct.em28xx_button** %6, align 8
  %88 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @EM28XX_BUTTON_ILLUMINATION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %94 = load i32, i32* @EM28XX_LED_ILLUMINATION, align 4
  %95 = call i32 @em28xx_find_led(%struct.em28xx* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %99 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %98, i32 0, i32 5
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %136

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %86
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %7, align 4
  %113 = load %struct.em28xx_button*, %struct.em28xx_button** %6, align 8
  %114 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %117 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %115, i64* %121, align 8
  %122 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %123 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %108, %105
  %127 = load %struct.em28xx_button*, %struct.em28xx_button** %6, align 8
  %128 = getelementptr inbounds %struct.em28xx_button, %struct.em28xx_button* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @EM28XX_BUTTONS_VOLATILE_QUERY_INTERVAL, align 4
  %133 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %134 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %126
  br label %136

136:                                              ; preds = %135, %97, %84, %72
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %11

139:                                              ; preds = %32
  %140 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %141 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %146 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* @EM28XX_NUM_BUTTON_ADDRESSES_MAX, align 8
  %149 = call i32 @memset(i32 %147, i32 0, i64 %148)
  %150 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %151 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %150, i32 0, i32 3
  %152 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %153 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @msecs_to_jiffies(i32 %154)
  %156 = call i32 @schedule_delayed_work(i32* %151, i32 %155)
  br label %157

157:                                              ; preds = %144, %139
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @em28xx_register_snapshot_button(%struct.em28xx*) #1

declare dso_local i32 @em28xx_find_led(%struct.em28xx*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
