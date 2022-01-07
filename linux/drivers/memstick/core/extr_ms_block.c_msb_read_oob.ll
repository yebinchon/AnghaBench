; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ms_extra_data_register, %struct.TYPE_4__ }
%struct.ms_extra_data_register = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@MEMSTICK_CP_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"BUG: attempt to read beyond the end of card at pba %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@h_msb_read_page = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"correctable error on pba %d, page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i64, i64, %struct.ms_extra_data_register*)* @msb_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_read_oob(%struct.msb_data* %0, i64 %1, i64 %2, %struct.ms_extra_data_register* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msb_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ms_extra_data_register*, align 8
  %10 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ms_extra_data_register* %3, %struct.ms_extra_data_register** %9, align 8
  %11 = load %struct.ms_extra_data_register*, %struct.ms_extra_data_register** %9, align 8
  %12 = icmp ne %struct.ms_extra_data_register* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @cpu_to_be16(i64 %16)
  %18 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %19 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  %27 = load i32, i32* @MEMSTICK_CP_EXTRA, align 4
  %28 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %29 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %4
  %43 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %44 = load i32, i32* @h_msb_read_page, align 4
  %45 = call i32 @msb_run_state_machine(%struct.msb_data* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ms_extra_data_register*, %struct.ms_extra_data_register** %9, align 8
  %47 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %48 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast %struct.ms_extra_data_register* %46 to i8*
  %51 = bitcast %struct.ms_extra_data_register* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %51, i64 4, i1 false)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EUCLEAN, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  store i32 0, i32* %5, align 4
  br label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %56, %37
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_notice(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
