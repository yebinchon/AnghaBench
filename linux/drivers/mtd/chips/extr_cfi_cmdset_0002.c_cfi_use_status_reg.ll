; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_use_status_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_use_status_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_private = type { %struct.cfi_pri_amdstd* }
%struct.cfi_pri_amdstd = type { i8, i32 }

@CFI_POLL_STATUS_REG = common dso_local global i32 0, align 4
@CFI_POLL_DQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfi_private*)* @cfi_use_status_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_use_status_reg(%struct.cfi_private* %0) #0 {
  %2 = alloca %struct.cfi_private*, align 8
  %3 = alloca %struct.cfi_pri_amdstd*, align 8
  %4 = alloca i32, align 4
  store %struct.cfi_private* %0, %struct.cfi_private** %2, align 8
  %5 = load %struct.cfi_private*, %struct.cfi_private** %2, align 8
  %6 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %5, i32 0, i32 0
  %7 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %6, align 8
  store %struct.cfi_pri_amdstd* %7, %struct.cfi_pri_amdstd** %3, align 8
  %8 = load i32, i32* @CFI_POLL_STATUS_REG, align 4
  %9 = load i32, i32* @CFI_POLL_DQ, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %3, align 8
  %12 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 4
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, 53
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %3, align 8
  %18 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CFI_POLL_STATUS_REG, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %16, %1
  %25 = phi i1 [ false, %1 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
