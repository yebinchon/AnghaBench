; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_parse_of_graph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_mc_parse_of_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__**, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@RCAR_VIN_NUM = common dso_local global i32 0, align 4
@rvin_mc_parse_of_endpoint = common dso_local global i32 0, align 4
@rvin_group_notify_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Notifier registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_mc_parse_of_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_mc_parse_of_graph(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RCAR_VIN_NUM, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %2, align 4
  br label %135

53:                                               ; preds = %39
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = call i32 @v4l2_async_notifier_init(%struct.TYPE_9__* %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %98, %53
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RCAR_VIN_NUM, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %98

75:                                               ; preds = %68
  %76 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* @rvin_mc_parse_of_endpoint, align 4
  %92 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32 %86, %struct.TYPE_9__* %90, i32 4, i32 1, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %135

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %64

101:                                              ; preds = %64
  %102 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %103 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = call i64 @list_empty(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %135

110:                                              ; preds = %101
  %111 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %112 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i32* @rvin_group_notify_ops, i32** %115, align 8
  %116 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %117 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %116, i32 0, i32 1
  %118 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %119 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = call i32 @v4l2_async_notifier_register(i32* %117, %struct.TYPE_9__* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %110
  %126 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %127 = call i32 @vin_err(%struct.rvin_dev* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %129 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_9__* %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %125, %109, %95, %47
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
