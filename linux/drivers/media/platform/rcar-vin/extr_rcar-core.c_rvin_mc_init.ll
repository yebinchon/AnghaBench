; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@rvin_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_mc_init(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  %5 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %6 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 8
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %12, i32 0, i32 2
  %14 = call i32 @media_entity_pads_init(i32* %11, i32 1, %struct.TYPE_8__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %21 = call i32 @rvin_group_get(%struct.rvin_dev* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %28 = call i32 @rvin_mc_parse_of_graph(%struct.rvin_dev* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %33 = call i32 @rvin_group_put(%struct.rvin_dev* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %36 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %35, i32 0, i32 0
  %37 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %34
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %43, i32 0, i32 0
  %45 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %46 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %44, i32* @rvin_ctrl_ops, i32 %45, i32 0, i32 255, i32 1, i32 255)
  %47 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %4, align 4
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %57, i32 0, i32 0
  %59 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %42
  %62 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %63 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %62, i32 0, i32 0
  %64 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %66, align 8
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %52, %40, %24, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @rvin_group_get(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_mc_parse_of_graph(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_group_put(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
