; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_img_optype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_get_img_optype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_section_entry = type { i32, i32 }

@OPTYPE_ISCSI_ACTIVE = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT = common dso_local global i32 0, align 4
@OPTYPE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_PXE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_FCOE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_ISCSI_BACKUP = common dso_local global i32 0, align 4
@OPTYPE_NCSI_FW = common dso_local global i32 0, align 4
@OPTYPE_FLASHISM_JUMPVECTOR = common dso_local global i32 0, align 4
@OPTYPE_SH_PHY_FW = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT_DIR = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT_CONFIG = common dso_local global i32 0, align 4
@OPTYPE_UFI_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @be_get_img_optype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_img_optype(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flash_section_entry, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.flash_section_entry* %3 to i64*
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds %struct.flash_section_entry, %struct.flash_section_entry* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = getelementptr inbounds %struct.flash_section_entry, %struct.flash_section_entry* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 65535
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %43 [
    i32 137, label %19
    i32 139, label %21
    i32 132, label %23
    i32 131, label %25
    i32 133, label %27
    i32 138, label %29
    i32 134, label %31
    i32 135, label %33
    i32 136, label %35
    i32 129, label %37
    i32 130, label %39
    i32 128, label %41
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @OPTYPE_ISCSI_ACTIVE, align 4
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %17
  %22 = load i32, i32* @OPTYPE_REDBOOT, align 4
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %17
  %24 = load i32, i32* @OPTYPE_BIOS, align 4
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %17
  %26 = load i32, i32* @OPTYPE_PXE_BIOS, align 4
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %17
  %28 = load i32, i32* @OPTYPE_FCOE_BIOS, align 4
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %17
  %30 = load i32, i32* @OPTYPE_ISCSI_BACKUP, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load i32, i32* @OPTYPE_NCSI_FW, align 4
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %17
  %34 = load i32, i32* @OPTYPE_FLASHISM_JUMPVECTOR, align 4
  store i32 %34, i32* %5, align 4
  br label %44

35:                                               ; preds = %17
  %36 = load i32, i32* @OPTYPE_SH_PHY_FW, align 4
  store i32 %36, i32* %5, align 4
  br label %44

37:                                               ; preds = %17
  %38 = load i32, i32* @OPTYPE_REDBOOT_DIR, align 4
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %17
  %40 = load i32, i32* @OPTYPE_REDBOOT_CONFIG, align 4
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %17
  %42 = load i32, i32* @OPTYPE_UFI_DIR, align 4
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
