; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.mlxsw_sp_span_entry = type { i32, i32 }

@MAX_SPAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_span_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_span_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MAX_SPAN, align 4
  %10 = call i32 @MLXSW_CORE_RES_VALID(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_SPAN, align 4
  %20 = call i32 @MLXSW_CORE_RES_GET(i32 %18, i32 %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlxsw_sp_span_entry* @kcalloc(i32 %27, i32 8, i32 %28)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.mlxsw_sp_span_entry* %29, %struct.mlxsw_sp_span_entry** %32, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %35, align 8
  %37 = icmp ne %struct.mlxsw_sp_span_entry* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %15
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %53, i64 %55
  store %struct.mlxsw_sp_span_entry* %56, %struct.mlxsw_sp_span_entry** %5, align 8
  %57 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %57, i32 0, i32 1
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %42

66:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %38, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local %struct.mlxsw_sp_span_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
