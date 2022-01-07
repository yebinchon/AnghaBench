; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_afe = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.adv748x_state = type { i64* }

@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@adv748x_afe_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_ATV_DECODER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"afe\00", align 1
@ADV748X_PORT_AIN0 = common dso_local global i32 0, align 4
@ADV748X_PORT_AIN7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"AFE Default input set to %d\0A\00", align 1
@ADV748X_AFE_SINK_AIN0 = common dso_local global i32 0, align 4
@ADV748X_AFE_SINK_AIN7 = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@ADV748X_AFE_SOURCE = common dso_local global i64 0, align 8
@ADV748X_AFE_NR_PADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv748x_afe_init(%struct.adv748x_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_afe*, align 8
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adv748x_afe* %0, %struct.adv748x_afe** %3, align 8
  %7 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %8 = call %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe* %7)
  store %struct.adv748x_state* %8, %struct.adv748x_state** %4, align 8
  %9 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %10 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %12 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %14 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %15 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %17 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %16, i32 0, i32 2
  %18 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %19 = load i32, i32* @MEDIA_ENT_F_ATV_DECODER, align 4
  %20 = call i32 @adv748x_subdev_init(%struct.TYPE_4__* %17, %struct.adv748x_state* %18, i32* @adv748x_afe_ops, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ADV748X_PORT_AIN0, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ADV748X_PORT_AIN7, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %28 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %38 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %22

43:                                               ; preds = %35, %22
  %44 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %45 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %46 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @adv748x_afe_s_input(%struct.adv748x_afe* %44, i32 %47)
  %49 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %50 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %51 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @adv_dbg(%struct.adv748x_state* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ADV748X_AFE_SINK_AIN0, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %68, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ADV748X_AFE_SINK_AIN7, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %61 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %62 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %73 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %74 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* @ADV748X_AFE_SOURCE, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 4
  %79 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %80 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* @ADV748X_AFE_NR_PADS, align 4
  %83 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %84 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @media_entity_pads_init(i32* %81, i32 %82, %struct.TYPE_3__* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %71
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %104

91:                                               ; preds = %71
  %92 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %93 = call i32 @adv748x_afe_init_controls(%struct.adv748x_afe* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %104

98:                                               ; preds = %96
  %99 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %100 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @media_entity_cleanup(i32* %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %97, %89
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe*) #1

declare dso_local i32 @adv748x_subdev_init(%struct.TYPE_4__*, %struct.adv748x_state*, i32*, i32, i8*) #1

declare dso_local i32 @adv748x_afe_s_input(%struct.adv748x_afe*, i32) #1

declare dso_local i32 @adv_dbg(%struct.adv748x_state*, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @adv748x_afe_init_controls(%struct.adv748x_afe*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
