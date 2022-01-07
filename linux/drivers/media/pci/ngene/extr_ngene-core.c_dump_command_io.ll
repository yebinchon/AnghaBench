; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_dump_command_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_dump_command_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@HOST_TO_NGENE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"host_to_ngene (%04x): %*ph\0A\00", align 1
@NGENE_TO_HOST = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ngene_to_host (%04x): %*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dev->hosttongene (%p): %*ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"dev->ngenetohost (%p): %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @dump_command_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_command_io(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32*, align 8
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %6 = load %struct.ngene*, %struct.ngene** %2, align 8
  %7 = getelementptr inbounds %struct.ngene, %struct.ngene* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %11 = load i32*, i32** @HOST_TO_NGENE, align 8
  %12 = call i32 @ngcpyfrom(i32* %10, i32* %11, i32 8)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32*, i32** @HOST_TO_NGENE, align 8
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %16 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %14, i32 8, i32* %15)
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %18 = load i32*, i32** @NGENE_TO_HOST, align 8
  %19 = call i32 @ngcpyfrom(i32* %17, i32* %18, i32 8)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32*, i32** @NGENE_TO_HOST, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %23 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 8, i32* %22)
  %24 = load %struct.ngene*, %struct.ngene** %2, align 8
  %25 = getelementptr inbounds %struct.ngene, %struct.ngene* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 8, i32* %29)
  %31 = load %struct.ngene*, %struct.ngene** %2, align 8
  %32 = getelementptr inbounds %struct.ngene, %struct.ngene* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %35, i32 8, i32* %36)
  ret void
}

declare dso_local i32 @ngcpyfrom(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
