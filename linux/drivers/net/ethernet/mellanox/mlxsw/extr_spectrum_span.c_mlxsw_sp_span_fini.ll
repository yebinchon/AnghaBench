; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.mlxsw_sp_span_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_span_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_span_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %5
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %16, i64 %18
  store %struct.mlxsw_sp_span_entry* %19, %struct.mlxsw_sp_span_entry** %4, align 8
  %20 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %33, align 8
  %35 = call i32 @kfree(%struct.mlxsw_sp_span_entry* %34)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_span_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
