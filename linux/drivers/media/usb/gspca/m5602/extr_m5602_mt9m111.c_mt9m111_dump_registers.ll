; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_dump_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Dumping the mt9m111 register state\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Dumping the mt9m111 sensor core registers\0A\00", align 1
@MT9M111_SENSOR_CORE = common dso_local global i32 0, align 4
@MT9M111_PAGE_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"register 0x%x contains 0x%x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Dumping the mt9m111 color pipeline registers\0A\00", align 1
@MT9M111_COLORPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Dumping the mt9m111 camera control registers\0A\00", align 1
@MT9M111_CAMERA_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"mt9m111 register state dump complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @mt9m111_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9m111_dump_registers(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @MT9M111_SENSOR_CORE, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %8, i32* %9, align 4
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %13 = call i32 @m5602_write_sensor(%struct.sd* %10, i32 %11, i32* %12, i32 2)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 255
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.sd*, %struct.sd** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %21 = call i32 @m5602_read_sensor(%struct.sd* %18, i32 %19, i32* %20, i32 2)
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %14

31:                                               ; preds = %14
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @MT9M111_COLORPIPE, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sd*, %struct.sd** %2, align 8
  %36 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %38 = call i32 @m5602_write_sensor(%struct.sd* %35, i32 %36, i32* %37, i32 2)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %53, %31
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 255
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.sd*, %struct.sd** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %46 = call i32 @m5602_read_sensor(%struct.sd* %43, i32 %44, i32* %45, i32 2)
  %47 = load i32, i32* %3, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %39

56:                                               ; preds = %39
  %57 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @MT9M111_CAMERA_CONTROL, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = load i32, i32* @MT9M111_PAGE_MAP, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = call i32 @m5602_write_sensor(%struct.sd* %60, i32 %61, i32* %62, i32 2)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %78, %56
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 255
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.sd*, %struct.sd** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %71 = call i32 @m5602_read_sensor(%struct.sd* %68, i32 %69, i32* %70, i32 2)
  %72 = load i32, i32* %3, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %64

81:                                               ; preds = %64
  %82 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #2

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
