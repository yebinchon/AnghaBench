; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.ddb_output* }
%struct.ddb_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_input** }
%struct.ddb_input = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ts_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  %7 = alloca %struct.ddb_output*, align 8
  %8 = alloca %struct.ddb_input*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  store %struct.dvb_device* %11, %struct.dvb_device** %6, align 8
  store %struct.ddb_output* null, %struct.ddb_output** %7, align 8
  store %struct.ddb_input* null, %struct.ddb_input** %8, align 8
  %12 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %13 = icmp ne %struct.dvb_device* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %15, i32 0, i32 0
  %17 = load %struct.ddb_output*, %struct.ddb_output** %16, align 8
  store %struct.ddb_output* %17, %struct.ddb_output** %7, align 8
  %18 = load %struct.ddb_output*, %struct.ddb_output** %7, align 8
  %19 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ddb_input**, %struct.ddb_input*** %21, align 8
  %23 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %22, i64 0
  %24 = load %struct.ddb_input*, %struct.ddb_input** %23, align 8
  store %struct.ddb_input* %24, %struct.ddb_input** %8, align 8
  br label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @O_ACCMODE, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.ddb_input*, %struct.ddb_input** %8, align 8
  %35 = icmp ne %struct.ddb_input* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %33
  %40 = load %struct.ddb_input*, %struct.ddb_input** %8, align 8
  %41 = call i32 @ddb_input_stop(%struct.ddb_input* %40)
  br label %60

42:                                               ; preds = %25
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @O_ACCMODE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @O_WRONLY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.ddb_output*, %struct.ddb_output** %7, align 8
  %52 = icmp ne %struct.ddb_output* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %50
  %57 = load %struct.ddb_output*, %struct.ddb_output** %7, align 8
  %58 = call i32 @ddb_output_stop(%struct.ddb_output* %57)
  br label %59

59:                                               ; preds = %56, %42
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = call i32 @dvb_generic_release(%struct.inode* %61, %struct.file* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %53, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ddb_input_stop(%struct.ddb_input*) #1

declare dso_local i32 @ddb_output_stop(%struct.ddb_output*) #1

declare dso_local i32 @dvb_generic_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
