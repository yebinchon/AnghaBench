; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ENA_REGS_DEV_STS_OFF = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_OFF = common dso_local global i32 0, align 4
@ENA_MMIO_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reg read32 timeout occurred\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ENA_REGS_DEV_STS_READY_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Device isn't ready, can't reset device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_RESET_TIMEOUT_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_RESET_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid timeout value\0A\00", align 1
@ENA_REGS_DEV_CTL_DEV_RESET_MASK = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_RESET_REASON_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_RESET_REASON_MASK = common dso_local global i32 0, align 4
@ENA_REGS_DEV_CTL_OFF = common dso_local global i64 0, align 8
@ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Reset indication didn't turn on\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Reset indication didn't turn off\0A\00", align 1
@ENA_REGS_CAPS_ADMIN_CMD_TO_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CAPS_ADMIN_CMD_TO_SHIFT = common dso_local global i32 0, align 4
@ADMIN_CMD_TIMEOUT_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %12 = load i32, i32* @ENA_REGS_DEV_STS_OFF, align 4
  %13 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %15 = load i32, i32* @ENA_REGS_CAPS_OFF, align 4
  %16 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIME, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %116

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENA_REGS_DEV_STS_READY_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %116

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ENA_REGS_CAPS_RESET_TIMEOUT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @ENA_REGS_CAPS_RESET_TIMEOUT_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %116

54:                                               ; preds = %42
  %55 = load i32, i32* @ENA_REGS_DEV_CTL_DEV_RESET_MASK, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ENA_REGS_DEV_CTL_RESET_REASON_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @ENA_REGS_DEV_CTL_RESET_REASON_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %65 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ENA_REGS_DEV_CTL_OFF, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %71 = call i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev* %70)
  %72 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ENA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK, align 4
  %75 = call i32 @wait_for_reset_state(%struct.ena_com_dev* %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %54
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %116

81:                                               ; preds = %54
  %82 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %83 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ENA_REGS_DEV_CTL_OFF, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 0, i64 %86)
  %88 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @wait_for_reset_state(%struct.ena_com_dev* %88, i32 %89, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %116

96:                                               ; preds = %81
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ENA_REGS_CAPS_ADMIN_CMD_TO_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @ENA_REGS_CAPS_ADMIN_CMD_TO_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 %105, 100000
  %107 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %108 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %115

110:                                              ; preds = %96
  %111 = load i32, i32* @ADMIN_CMD_TIMEOUT_US, align 4
  %112 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %113 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %104
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %93, %78, %50, %38, %29
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ena_com_reg_bar_read32(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev*) #1

declare dso_local i32 @wait_for_reset_state(%struct.ena_com_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
