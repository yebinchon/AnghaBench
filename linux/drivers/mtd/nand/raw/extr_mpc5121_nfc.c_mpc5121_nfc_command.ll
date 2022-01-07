; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.mpc5121_nfc_prv = type { i32, i32 }

@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @mpc5121_nfc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_command(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.mpc5121_nfc_prv*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %9, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.mpc5121_nfc_prv* %14, %struct.mpc5121_nfc_prv** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %23 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %25 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %44 [
    i32 134, label %27
    i32 133, label %30
    i32 132, label %31
    i32 130, label %36
    i32 129, label %39
    i32 136, label %43
    i32 135, label %43
    i32 131, label %43
    i32 128, label %43
  ]

27:                                               ; preds = %20
  %28 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %29 = call i32 @mpc5121_nfc_send_prog_page(%struct.mtd_info* %28)
  br label %45

30:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %33 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 256
  store i32 %35, i32* %33, align 4
  store i32 133, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %45

36:                                               ; preds = %20
  %37 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %38 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  store i32 133, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  call void @mpc5121_nfc_command(%struct.nand_chip* %40, i32 133, i32 %41, i32 %42)
  store i32 0, i32* %7, align 4
  br label %45

43:                                               ; preds = %20, %20, %20, %20
  br label %45

44:                                               ; preds = %20
  br label %85

45:                                               ; preds = %43, %39, %36, %31, %30, %27
  %46 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mpc5121_nfc_send_cmd(%struct.mtd_info* %46, i32 %47)
  %49 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @mpc5121_nfc_addr_cycle(%struct.mtd_info* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %85 [
    i32 133, label %54
    i32 131, label %66
    i32 128, label %69
  ]

54:                                               ; preds = %45
  %55 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 512
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %61 = load i32, i32* @NAND_CMD_READSTART, align 4
  %62 = call i32 @mpc5121_nfc_send_cmd(%struct.mtd_info* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %65 = call i32 @mpc5121_nfc_send_read_page(%struct.mtd_info* %64)
  br label %85

66:                                               ; preds = %45
  %67 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %68 = call i32 @mpc5121_nfc_send_read_id(%struct.mtd_info* %67)
  br label %85

69:                                               ; preds = %45
  %70 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %71 = call i32 @mpc5121_nfc_send_read_status(%struct.mtd_info* %70)
  %72 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %80 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %84

81:                                               ; preds = %69
  %82 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %83 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %44, %45, %84, %66, %63
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mpc5121_nfc_send_prog_page(%struct.mtd_info*) #1

declare dso_local i32 @mpc5121_nfc_send_cmd(%struct.mtd_info*, i32) #1

declare dso_local i32 @mpc5121_nfc_addr_cycle(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @mpc5121_nfc_send_read_page(%struct.mtd_info*) #1

declare dso_local i32 @mpc5121_nfc_send_read_id(%struct.mtd_info*) #1

declare dso_local i32 @mpc5121_nfc_send_read_status(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
