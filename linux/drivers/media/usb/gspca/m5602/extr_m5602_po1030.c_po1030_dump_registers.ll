; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_dump_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Dumping the po1030 sensor core registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"register 0x%x contains 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"po1030 register state dump complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Probing for which registers that are read/write\0A\00", align 1
@__const.po1030_dump_registers.test_value = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"register 0x%x is writeable\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"register 0x%x is read only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @po1030_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @po1030_dump_registers(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 127
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @m5602_read_sensor(%struct.sd* %13, i32 %14, i32* %4, i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %9

22:                                               ; preds = %9
  %23 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %54, %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 255
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast ([2 x i32]* @__const.po1030_dump_registers.test_value to i8*), i64 8, i1 false)
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @m5602_read_sensor(%struct.sd* %30, i32 %31, i32* %5, i32 1)
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = call i32 @m5602_write_sensor(%struct.sd* %33, i32 %34, i32* %35, i32 1)
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @m5602_read_sensor(%struct.sd* %37, i32 %38, i32* %6, i32 1)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  br label %50

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @m5602_write_sensor(%struct.sd* %51, i32 %52, i32* %5, i32 1)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %25

57:                                               ; preds = %25
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
