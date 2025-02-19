; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_lookup_by_subsys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_lookup_by_subsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subsys_tbl_ent = type { i64, i64 }
%struct.tg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@subsys_id_to_phy_id = common dso_local global %struct.subsys_tbl_ent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subsys_tbl_ent* (%struct.tg3*)* @tg3_lookup_by_subsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subsys_tbl_ent* @tg3_lookup_by_subsys(%struct.tg3* %0) #0 {
  %2 = alloca %struct.subsys_tbl_ent*, align 8
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** @subsys_id_to_phy_id, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.subsys_tbl_ent* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %5
  %11 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** @subsys_id_to_phy_id, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %11, i64 %13
  %15 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %10
  %24 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** @subsys_id_to_phy_id, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %24, i64 %26
  %28 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tg3*, %struct.tg3** %3, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** @subsys_id_to_phy_id, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %37, i64 %39
  store %struct.subsys_tbl_ent* %40, %struct.subsys_tbl_ent** %2, align 8
  br label %46

41:                                               ; preds = %23, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %5

45:                                               ; preds = %5
  store %struct.subsys_tbl_ent* null, %struct.subsys_tbl_ent** %2, align 8
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** %2, align 8
  ret %struct.subsys_tbl_ent* %47
}

declare dso_local i32 @ARRAY_SIZE(%struct.subsys_tbl_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
