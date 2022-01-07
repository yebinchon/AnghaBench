; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mei_cl* }
%struct.mei_cl = type { i64, i32, i32, i32, i64, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i64, i64, i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @mei_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_cl*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @poll_requested_events(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.mei_cl*, %struct.mei_cl** %14, align 8
  store %struct.mei_cl* %15, %struct.mei_cl** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %17 = icmp ne %struct.mei_cl* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 7
  %21 = load %struct.mei_device*, %struct.mei_device** %20, align 8
  %22 = icmp ne %struct.mei_device* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EPOLLERR, align 4
  store i32 %30, i32* %3, align 4
  br label %142

31:                                               ; preds = %24
  %32 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %33 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %32, i32 0, i32 7
  %34 = load %struct.mei_device*, %struct.mei_device** %33, align 8
  store %struct.mei_device* %34, %struct.mei_device** %8, align 8
  %35 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %39 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EPOLLPRI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %31
  %48 = phi i1 [ false, %31 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %51 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %57 = call i32 @mei_cl_is_connected(%struct.mei_cl* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* @EPOLLERR, align 4
  store i32 %60, i32* %9, align 4
  br label %137

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %67 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %66, i32 0, i32 5
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @poll_wait(%struct.file* %65, i32* %67, i32* %68)
  %70 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %71 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @EPOLLPRI, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %64
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @EPOLLIN, align 4
  %82 = load i32, i32* @EPOLLRDNORM, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load %struct.file*, %struct.file** %4, align 8
  %88 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %89 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %88, i32 0, i32 3
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @poll_wait(%struct.file* %87, i32* %89, i32* %90)
  %92 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %93 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %92, i32 0, i32 2
  %94 = call i32 @list_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @EPOLLIN, align 4
  %98 = load i32, i32* @EPOLLRDNORM, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %108

102:                                              ; preds = %86
  %103 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %104 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %105 = call i32 @mei_cl_mtu(%struct.mei_cl* %104)
  %106 = load %struct.file*, %struct.file** %4, align 8
  %107 = call i32 @mei_cl_read_start(%struct.mei_cl* %103, i32 %105, %struct.file* %106)
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @EPOLLOUT, align 4
  %112 = load i32, i32* @EPOLLWRNORM, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = load %struct.file*, %struct.file** %4, align 8
  %118 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %119 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %118, i32 0, i32 1
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @poll_wait(%struct.file* %117, i32* %119, i32* %120)
  %122 = load %struct.mei_cl*, %struct.mei_cl** %7, align 8
  %123 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %126 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load i32, i32* @EPOLLOUT, align 4
  %131 = load i32, i32* @EPOLLWRNORM, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %129, %116
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136, %59
  %138 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %139 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %138, i32 0, i32 2
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %29
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mei_cl_read_start(%struct.mei_cl*, i32, %struct.file*) #1

declare dso_local i32 @mei_cl_mtu(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
