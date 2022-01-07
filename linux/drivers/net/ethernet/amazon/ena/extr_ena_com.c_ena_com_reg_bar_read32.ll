; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_reg_bar_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_reg_bar_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, %struct.ena_com_mmio_read }
%struct.ena_com_mmio_read = type { i64, i32, i32, i32, %struct.ena_admin_ena_mmio_req_read_less_resp* }
%struct.ena_admin_ena_mmio_req_read_less_resp = type { i32, i64, i64 }

@ENA_REG_READ_TIMEOUT = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REG_OFF_MASK = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_REQ_ID_MASK = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_REG_READ_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"reading reg failed for timeout. expected: req id[%hu] offset[%hu] actual: req id[%hu] offset[%hu]\0A\00", align 1
@ENA_MMIO_READ_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Read failure: wrong offset provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ena_com_dev*, i64)* @ena_com_reg_bar_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ena_com_reg_bar_read32(%struct.ena_com_dev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_com_mmio_read*, align 8
  %7 = alloca %struct.ena_admin_ena_mmio_req_read_less_resp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %14 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %13, i32 0, i32 1
  store %struct.ena_com_mmio_read* %14, %struct.ena_com_mmio_read** %6, align 8
  %15 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %16 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %15, i32 0, i32 4
  %17 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %16, align 8
  store %struct.ena_admin_ena_mmio_req_read_less_resp* %17, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %19 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = call i32 (...) @might_sleep()
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @ENA_REG_READ_TIMEOUT, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %28 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %33 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %3, align 8
  br label %133

38:                                               ; preds = %26
  %39 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %40 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %39, i32 0, i32 2
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %44 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %48 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 57005
  %51 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %52 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %51, i32 0, i32 0
  store volatile i32 %50, i32* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REG_OFF_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REG_OFF_MASK, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %8, align 8
  %58 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %59 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @ENA_REGS_MMIO_REG_READ_REQ_ID_MASK, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %68 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ENA_REGS_MMIO_REG_READ_OFF, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i64 %66, i64 %71)
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %90, %38
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %79 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %78, i32 0, i32 0
  %80 = load volatile i32, i32* %79, align 8
  %81 = call i64 @READ_ONCE(i32 %80)
  %82 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %83 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %93

88:                                               ; preds = %77
  %89 = call i32 @udelay(i32 1)
  br label %90

90:                                               ; preds = %88
  %91 = load i64, i64* %10, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %73

93:                                               ; preds = %87, %73
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %102 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %106 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %105, i32 0, i32 0
  %107 = load volatile i32, i32* %106, align 8
  %108 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %109 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %108, i32 0, i32 1
  %110 = load volatile i64, i64* %109, align 8
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %103, i64 %104, i32 %107, i64 %110)
  %112 = load i64, i64* @ENA_MMIO_READ_TIMEOUT, align 8
  store i64 %112, i64* %9, align 8
  br label %127

113:                                              ; preds = %93
  %114 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %115 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %114, i32 0, i32 1
  %116 = load volatile i64, i64* %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i64, i64* @ENA_MMIO_READ_TIMEOUT, align 8
  store i64 %121, i64* %9, align 8
  br label %126

122:                                              ; preds = %113
  %123 = load %struct.ena_admin_ena_mmio_req_read_less_resp*, %struct.ena_admin_ena_mmio_req_read_less_resp** %7, align 8
  %124 = getelementptr inbounds %struct.ena_admin_ena_mmio_req_read_less_resp, %struct.ena_admin_ena_mmio_req_read_less_resp* %123, i32 0, i32 2
  %125 = load volatile i64, i64* %124, align 8
  store i64 %125, i64* %9, align 8
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %100
  %128 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %6, align 8
  %129 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %128, i32 0, i32 2
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load i64, i64* %9, align 8
  store i64 %132, i64* %3, align 8
  br label %133

133:                                              ; preds = %127, %31
  %134 = load i64, i64* %3, align 8
  ret i64 %134
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
