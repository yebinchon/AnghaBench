; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_dump_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_dump_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Dumping all stv06xx bridge registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Read 0x%x from address 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Testing stv06xx bridge registers for writability\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Register 0x%x is read/write\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Register 0x%x is read/write, but only partially\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Register 0x%x is read-only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @stv06xx_dump_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv06xx_dump_bridge(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %6 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 5120, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 5647
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @stv06xx_read_bridge(%struct.sd* %11, i32 %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  %21 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 5120, i32* %3, align 4
  br label %22

22:                                               ; preds = %57, %20
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 5647
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @stv06xx_read_bridge(%struct.sd* %26, i32 %27, i32* %4)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @stv06xx_write_bridge(%struct.sd* %30, i32 %31, i32 255)
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @stv06xx_read_bridge(%struct.sd* %33, i32 %34, i32* %4)
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %52

41:                                               ; preds = %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.sd*, %struct.sd** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @stv06xx_write_bridge(%struct.sd* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %22

60:                                               ; preds = %22
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @stv06xx_read_bridge(%struct.sd*, i32, i32*) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
