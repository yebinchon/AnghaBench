; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_trap_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_trap_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_listener = type { i32, i32, i32, i32 }

@MLXSW_REG_HPKT_LEN = common dso_local global i32 0, align 4
@hpkt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_trap_register(%struct.mlxsw_core* %0, %struct.mlxsw_listener* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.mlxsw_listener*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.mlxsw_listener* %1, %struct.mlxsw_listener** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @MLXSW_REG_HPKT_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %17 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @mlxsw_core_listener_register(%struct.mlxsw_core* %16, %struct.mlxsw_listener* %17, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlxsw_reg_hpkt_pack(i8* %15, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %39 = load i32, i32* @hpkt, align 4
  %40 = call i32 @MLXSW_REG(i32 %39)
  %41 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %38, i32 %40, i8* %15)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %46

45:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

46:                                               ; preds = %44
  %47 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %48 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @mlxsw_core_listener_unregister(%struct.mlxsw_core* %47, %struct.mlxsw_listener* %48, i8* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %45, %22
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_core_listener_register(%struct.mlxsw_core*, %struct.mlxsw_listener*, i8*) #2

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
