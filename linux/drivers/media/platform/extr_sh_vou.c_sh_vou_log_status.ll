; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sh_vou_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"VOUER:   0x%08x\0A\00", align 1
@VOUER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"VOUCR:   0x%08x\0A\00", align 1
@VOUCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"VOUSTR:  0x%08x\0A\00", align 1
@VOUSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"VOUVCR:  0x%08x\0A\00", align 1
@VOUVCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"VOUISR:  0x%08x\0A\00", align 1
@VOUISR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"VOUBCR:  0x%08x\0A\00", align 1
@VOUBCR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"VOUDPR:  0x%08x\0A\00", align 1
@VOUDPR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"VOUDSR:  0x%08x\0A\00", align 1
@VOUDSR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"VOUVPR:  0x%08x\0A\00", align 1
@VOUVPR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"VOUIR:   0x%08x\0A\00", align 1
@VOUIR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"VOUSRR:  0x%08x\0A\00", align 1
@VOUSRR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"VOUMSR:  0x%08x\0A\00", align 1
@VOUMSR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"VOUHIR:  0x%08x\0A\00", align 1
@VOUHIR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"VOUDFR:  0x%08x\0A\00", align 1
@VOUDFR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"VOUAD1R: 0x%08x\0A\00", align 1
@VOUAD1R = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"VOUAD2R: 0x%08x\0A\00", align 1
@VOUAD2R = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"VOUAIR:  0x%08x\0A\00", align 1
@VOUAIR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"VOUSWR:  0x%08x\0A\00", align 1
@VOUSWR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"VOURCR:  0x%08x\0A\00", align 1
@VOURCR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"VOURPR:  0x%08x\0A\00", align 1
@VOURPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @sh_vou_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_vou_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.sh_vou_device* @video_drvdata(%struct.file* %6)
  store %struct.sh_vou_device* %7, %struct.sh_vou_device** %5, align 8
  %8 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %9 = load i32, i32* @VOUER, align 4
  %10 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %8, i32 %9)
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %13 = load i32, i32* @VOUCR, align 4
  %14 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %12, i32 %13)
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %17 = load i32, i32* @VOUSTR, align 4
  %18 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %16, i32 %17)
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %21 = load i32, i32* @VOUVCR, align 4
  %22 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %20, i32 %21)
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %25 = load i32, i32* @VOUISR, align 4
  %26 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %24, i32 %25)
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %29 = load i32, i32* @VOUBCR, align 4
  %30 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %28, i32 %29)
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %33 = load i32, i32* @VOUDPR, align 4
  %34 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %32, i32 %33)
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %37 = load i32, i32* @VOUDSR, align 4
  %38 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %36, i32 %37)
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %41 = load i32, i32* @VOUVPR, align 4
  %42 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %40, i32 %41)
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %45 = load i32, i32* @VOUIR, align 4
  %46 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %44, i32 %45)
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %49 = load i32, i32* @VOUSRR, align 4
  %50 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %48, i32 %49)
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %50)
  %52 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %53 = load i32, i32* @VOUMSR, align 4
  %54 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %52, i32 %53)
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %54)
  %56 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %57 = load i32, i32* @VOUHIR, align 4
  %58 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %56, i32 %57)
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %58)
  %60 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %61 = load i32, i32* @VOUDFR, align 4
  %62 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %60, i32 %61)
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %62)
  %64 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %65 = load i32, i32* @VOUAD1R, align 4
  %66 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %64, i32 %65)
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %66)
  %68 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %69 = load i32, i32* @VOUAD2R, align 4
  %70 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %68, i32 %69)
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %70)
  %72 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %73 = load i32, i32* @VOUAIR, align 4
  %74 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %72, i32 %73)
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %74)
  %76 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %77 = load i32, i32* @VOUSWR, align 4
  %78 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %76, i32 %77)
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %78)
  %80 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %81 = load i32, i32* @VOURCR, align 4
  %82 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %80, i32 %81)
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %82)
  %84 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %85 = load i32, i32* @VOURPR, align 4
  %86 = call i32 @sh_vou_reg_a_read(%struct.sh_vou_device* %84, i32 %85)
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %86)
  ret i32 0
}

declare dso_local %struct.sh_vou_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sh_vou_reg_a_read(%struct.sh_vou_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
