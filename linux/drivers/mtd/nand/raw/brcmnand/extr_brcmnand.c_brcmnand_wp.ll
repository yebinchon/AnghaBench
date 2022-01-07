; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.TYPE_2__*, %struct.brcmnand_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmnand_controller = type { i32, i32 }

@BRCMNAND_HAS_WP = common dso_local global i32 0, align 4
@wp_on = common dso_local global i32 0, align 4
@brcmnand_wp.old_wp = internal global i32 -1, align 4
@.str = private unnamed_addr constant [7 x i8] c"WP %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NAND_CTRL_RDY = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@NAND_STATUS_WP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"nand #WP expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @brcmnand_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_wp(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.brcmnand_host*, align 8
  %7 = alloca %struct.brcmnand_controller*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.brcmnand_host* %12, %struct.brcmnand_host** %6, align 8
  %13 = load %struct.brcmnand_host*, %struct.brcmnand_host** %6, align 8
  %14 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %13, i32 0, i32 1
  %15 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %14, align 8
  store %struct.brcmnand_controller* %15, %struct.brcmnand_controller** %7, align 8
  %16 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %17 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BRCMNAND_HAS_WP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %2
  %23 = load i32, i32* @wp_on, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  %26 = load i32, i32* @brcmnand_wp.old_wp, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %31 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* @brcmnand_wp.old_wp, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %41 = load i32, i32* @NAND_CTRL_RDY, align 4
  %42 = load i32, i32* @NAND_STATUS_READY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NAND_CTRL_RDY, align 4
  %45 = load i32, i32* @NAND_STATUS_READY, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller* %40, i32 %43, i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %88

51:                                               ; preds = %39
  %52 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @brcmnand_set_wp(%struct.brcmnand_controller* %52, i32 %53)
  %55 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %56 = call i32 @nand_status_op(%struct.nand_chip* %55, i32* null)
  %57 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %58 = load i32, i32* @NAND_CTRL_RDY, align 4
  %59 = load i32, i32* @NAND_STATUS_READY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NAND_STATUS_WP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NAND_CTRL_RDY, align 4
  %64 = load i32, i32* @NAND_STATUS_READY, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %71

69:                                               ; preds = %51
  %70 = load i32, i32* @NAND_STATUS_WP, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = or i32 %65, %72
  %74 = call i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller* %57, i32 %62, i32 %73, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.brcmnand_host*, %struct.brcmnand_host** %6, align 8
  %79 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @dev_err_ratelimited(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %77, %71
  br label %88

88:                                               ; preds = %50, %87, %22, %2
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller*, i32, i32, i32) #1

declare dso_local i32 @brcmnand_set_wp(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
