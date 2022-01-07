; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6xxx_g1_vtu_prob_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6xxx_g1_vtu_prob_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mv88e6xxx_vtu_entry = type { i32 }

@MV88E6XXX_G1_VTU_OP_GET_CLR_VIOLATION = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_OP = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_OP_SPID_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_OP_MEMBER_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"VTU member violation for vid %d, source port %d\0A\00", align 1
@MV88E6XXX_G1_VTU_OP_MISS_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"VTU miss violation for vid %d, source port %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"VTU problem: error %d while handling interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv88e6xxx_g1_vtu_prob_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_vtu_prob_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca %struct.mv88e6xxx_vtu_entry, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mv88e6xxx_chip*
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %6, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %14 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %13)
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %16 = load i32, i32* @MV88E6XXX_G1_VTU_OP_GET_CLR_VIOLATION, align 4
  %17 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %23 = load i32, i32* @MV88E6XXX_G1_VTU_OP, align 4
  %24 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %22, i32 %23, i32* %10)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %85

28:                                               ; preds = %21
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %30 = call i32 @mv88e6xxx_g1_vtu_vid_read(%struct.mv88e6xxx_chip* %29, %struct.mv88e6xxx_vtu_entry* %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %85

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MV88E6XXX_G1_VTU_OP_SPID_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MV88E6XXX_G1_VTU_OP_MEMBER_VIOLATION, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err_ratelimited(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %51 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %42, %34
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MV88E6XXX_G1_VTU_OP_MISS_VIOLATION, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %66 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_dbg_ratelimited(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %73 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %64, %59
  %82 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %83 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %94

85:                                               ; preds = %33, %27, %20
  %86 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %87 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %86)
  %88 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %89 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %81
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_vid_read(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
