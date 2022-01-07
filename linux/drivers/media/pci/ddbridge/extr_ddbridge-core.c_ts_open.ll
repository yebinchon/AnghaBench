; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.ddb_output* }
%struct.ddb_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_input** }
%struct.ddb_input = type { i64, i64 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_device*, align 8
  %8 = alloca %struct.ddb_output*, align 8
  %9 = alloca %struct.ddb_input*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.dvb_device*, %struct.dvb_device** %11, align 8
  store %struct.dvb_device* %12, %struct.dvb_device** %7, align 8
  store %struct.ddb_output* null, %struct.ddb_output** %8, align 8
  store %struct.ddb_input* null, %struct.ddb_input** %9, align 8
  %13 = load %struct.dvb_device*, %struct.dvb_device** %7, align 8
  %14 = icmp ne %struct.dvb_device* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.dvb_device*, %struct.dvb_device** %7, align 8
  %17 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 0
  %18 = load %struct.ddb_output*, %struct.ddb_output** %17, align 8
  store %struct.ddb_output* %18, %struct.ddb_output** %8, align 8
  %19 = load %struct.ddb_output*, %struct.ddb_output** %8, align 8
  %20 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ddb_input**, %struct.ddb_input*** %22, align 8
  %24 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %23, i64 0
  %25 = load %struct.ddb_input*, %struct.ddb_input** %24, align 8
  store %struct.ddb_input* %25, %struct.ddb_input** %9, align 8
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @O_ACCMODE, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = load %struct.ddb_input*, %struct.ddb_input** %9, align 8
  %36 = icmp ne %struct.ddb_input* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %34
  %41 = load %struct.ddb_input*, %struct.ddb_input** %9, align 8
  %42 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.ddb_input*, %struct.ddb_input** %9, align 8
  %47 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %45
  br label %73

54:                                               ; preds = %26
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @O_ACCMODE, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @O_WRONLY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.ddb_output*, %struct.ddb_output** %8, align 8
  %64 = icmp ne %struct.ddb_output* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %62
  br label %72

69:                                               ; preds = %54
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %106

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = call i32 @dvb_generic_open(%struct.inode* %74, %struct.file* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %106

81:                                               ; preds = %73
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @O_ACCMODE, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.ddb_input*, %struct.ddb_input** %9, align 8
  %91 = call i32 @ddb_input_start(%struct.ddb_input* %90)
  br label %104

92:                                               ; preds = %81
  %93 = load %struct.file*, %struct.file** %5, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @O_ACCMODE, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @O_WRONLY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.ddb_output*, %struct.ddb_output** %8, align 8
  %102 = call i32 @ddb_output_start(%struct.ddb_output* %101)
  br label %103

103:                                              ; preds = %100, %92
  br label %104

104:                                              ; preds = %103, %89
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %79, %69, %65, %50, %37
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @dvb_generic_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @ddb_input_start(%struct.ddb_input*) #1

declare dso_local i32 @ddb_output_start(%struct.ddb_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
