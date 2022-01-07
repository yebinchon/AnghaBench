; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_trap_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_trap_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_listener = type { i32, i32, i32, i32, i32 }

@MLXSW_REG_HPKT_LEN = common dso_local global i32 0, align 4
@hpkt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_core_trap_unregister(%struct.mlxsw_core* %0, %struct.mlxsw_listener* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_listener*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_listener* %1, %struct.mlxsw_listener** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @MLXSW_REG_HPKT_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlxsw_reg_hpkt_pack(i8* %12, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %32 = load i32, i32* @hpkt, align 4
  %33 = call i32 @MLXSW_REG(i32 %32)
  %34 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %31, i32 %33, i8* %12)
  br label %35

35:                                               ; preds = %17, %3
  %36 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %37 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mlxsw_core_listener_unregister(%struct.mlxsw_core* %36, %struct.mlxsw_listener* %37, i8* %38)
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_hpkt_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(%struct.mlxsw_core*, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_core_listener_unregister(%struct.mlxsw_core*, %struct.mlxsw_listener*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
