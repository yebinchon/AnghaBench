; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_buftype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_buftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@isif_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isif_set_buftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_set_buftype(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 0), align 8
  %4 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 2, i32 0), align 4
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 1, i32 0), align 8
  br label %10

10:                                               ; preds = %8, %6
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
