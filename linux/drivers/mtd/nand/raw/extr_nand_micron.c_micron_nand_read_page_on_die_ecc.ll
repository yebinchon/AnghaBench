; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_read_page_on_die_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_read_page_on_die_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @micron_nand_read_page_on_die_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_nand_read_page_on_die_ecc(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %16, i32 1)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @nand_read_page_op(%struct.nand_chip* %23, i32 %24, i32 0, i32* null, i32 0)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %80

29:                                               ; preds = %22
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = call i32 @nand_status_op(%struct.nand_chip* %30, i32* %11)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %80

35:                                               ; preds = %29
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = call i32 @nand_exit_status_op(%struct.nand_chip* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nand_read_data_op(%struct.nand_chip* %42, i32* %43, i32 %46, i32 0)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nand_read_data_op(%struct.nand_chip* %54, i32* %57, i32 %60, i32 0)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %53, %50, %41
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @micron_nand_on_die_ecc_status_4(%struct.nand_chip* %69, i32 %70, i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @micron_nand_on_die_ecc_status_8(%struct.nand_chip* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %68
  br label %80

80:                                               ; preds = %79, %40, %34, %28
  %81 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %82 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %81, i32 0)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

declare dso_local i32 @nand_exit_status_op(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @micron_nand_on_die_ecc_status_4(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @micron_nand_on_die_ecc_status_8(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
