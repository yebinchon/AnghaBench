; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_gf_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_gf_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_gf_tables = type { i32 }
%struct.atmel_pmecc_user_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pmecc_gf_tables_lock = common dso_local global i32 0, align 4
@pmecc_gf_tables_512 = common dso_local global %struct.atmel_pmecc_gf_tables* null, align 8
@pmecc_gf_tables_1024 = common dso_local global %struct.atmel_pmecc_gf_tables* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_pmecc_gf_tables* (%struct.atmel_pmecc_user_req*)* @atmel_pmecc_get_gf_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_pmecc_gf_tables* @atmel_pmecc_get_gf_tables(%struct.atmel_pmecc_user_req* %0) #0 {
  %2 = alloca %struct.atmel_pmecc_user_req*, align 8
  %3 = alloca %struct.atmel_pmecc_gf_tables**, align 8
  %4 = alloca %struct.atmel_pmecc_gf_tables*, align 8
  store %struct.atmel_pmecc_user_req* %0, %struct.atmel_pmecc_user_req** %2, align 8
  %5 = call i32 @mutex_lock(i32* @pmecc_gf_tables_lock)
  %6 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 512
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.atmel_pmecc_gf_tables** @pmecc_gf_tables_512, %struct.atmel_pmecc_gf_tables*** %3, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.atmel_pmecc_gf_tables** @pmecc_gf_tables_1024, %struct.atmel_pmecc_gf_tables*** %3, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = load %struct.atmel_pmecc_gf_tables**, %struct.atmel_pmecc_gf_tables*** %3, align 8
  %15 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %14, align 8
  store %struct.atmel_pmecc_gf_tables* %15, %struct.atmel_pmecc_gf_tables** %4, align 8
  %16 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %17 = icmp ne %struct.atmel_pmecc_gf_tables* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %2, align 8
  %20 = call %struct.atmel_pmecc_gf_tables* @atmel_pmecc_create_gf_tables(%struct.atmel_pmecc_user_req* %19)
  store %struct.atmel_pmecc_gf_tables* %20, %struct.atmel_pmecc_gf_tables** %4, align 8
  %21 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %22 = call i32 @IS_ERR(%struct.atmel_pmecc_gf_tables* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  %26 = load %struct.atmel_pmecc_gf_tables**, %struct.atmel_pmecc_gf_tables*** %3, align 8
  store %struct.atmel_pmecc_gf_tables* %25, %struct.atmel_pmecc_gf_tables** %26, align 8
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = call i32 @mutex_unlock(i32* @pmecc_gf_tables_lock)
  %30 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %4, align 8
  ret %struct.atmel_pmecc_gf_tables* %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.atmel_pmecc_gf_tables* @atmel_pmecc_create_gf_tables(%struct.atmel_pmecc_user_req*) #1

declare dso_local i32 @IS_ERR(%struct.atmel_pmecc_gf_tables*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
