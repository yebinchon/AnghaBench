; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_lookup_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_lookup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_lookup_entry = type { i32, i32, i32 }

@MVPP2_CLS_LKP_INDEX_WAY_OFFS = common dso_local global i32 0, align 4
@MVPP2_CLS_LKP_INDEX_REG = common dso_local global i32 0, align 4
@MVPP2_CLS_LKP_TBL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_cls_lookup_entry*)* @mvpp2_cls_lookup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_lookup_write(%struct.mvpp2* %0, %struct.mvpp2_cls_lookup_entry* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_cls_lookup_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_cls_lookup_entry* %1, %struct.mvpp2_cls_lookup_entry** %4, align 8
  %6 = load %struct.mvpp2_cls_lookup_entry*, %struct.mvpp2_cls_lookup_entry** %4, align 8
  %7 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MVPP2_CLS_LKP_INDEX_WAY_OFFS, align 4
  %10 = shl i32 %8, %9
  %11 = load %struct.mvpp2_cls_lookup_entry*, %struct.mvpp2_cls_lookup_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %16 = load i32, i32* @MVPP2_CLS_LKP_INDEX_REG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mvpp2_write(%struct.mvpp2* %15, i32 %16, i32 %17)
  %19 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %20 = load i32, i32* @MVPP2_CLS_LKP_TBL_REG, align 4
  %21 = load %struct.mvpp2_cls_lookup_entry*, %struct.mvpp2_cls_lookup_entry** %4, align 8
  %22 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mvpp2_write(%struct.mvpp2* %19, i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
