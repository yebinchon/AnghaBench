; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_data_interface, i32 }
%struct.nand_data_interface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_reset(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_data_interface, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = bitcast %struct.nand_data_interface* %6 to i8*
  %11 = bitcast %struct.nand_data_interface* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @nand_reset_data_interface(%struct.nand_chip* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @nand_select_target(%struct.nand_chip* %20, i32 %21)
  %23 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %24 = call i32 @nand_reset_op(%struct.nand_chip* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = call i32 @nand_deselect_target(%struct.nand_chip* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %19
  %32 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

37:                                               ; preds = %31
  %38 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = bitcast %struct.nand_data_interface* %39 to i8*
  %41 = bitcast %struct.nand_data_interface* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @nand_setup_data_interface(%struct.nand_chip* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %36, %29, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nand_reset_data_interface(%struct.nand_chip*, i32) #2

declare dso_local i32 @nand_select_target(%struct.nand_chip*, i32) #2

declare dso_local i32 @nand_reset_op(%struct.nand_chip*) #2

declare dso_local i32 @nand_deselect_target(%struct.nand_chip*) #2

declare dso_local i32 @nand_setup_data_interface(%struct.nand_chip*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
