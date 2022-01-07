; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_read_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_read_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i64, i64, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i32 }

@IO_SLU_UNITCFG = common dso_local global i32 0, align 4
@IO_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"err: SLUID=%016llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GENWQE_SLU_ARCH_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"err: incompatible SLU Architecture %u\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IO_APP_UNITCFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"err: APPID=%016llx\0A\00", align 1
@IO_SLU_BITSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_read_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_read_ids(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %7 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %6, i32 0, i32 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %10 = load i32, i32* @IO_SLU_UNITCFG, align 4
  %11 = call i64 @__genwqe_readq(%struct.genwqe_dev* %9, i32 %10)
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %13 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %15 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IO_ILLEGAL_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %23 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %1
  %30 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %31 = call i32 @genwqe_get_slu_id(%struct.genwqe_dev* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GENWQE_SLU_ARCH_REQ, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %89

45:                                               ; preds = %35
  %46 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %47 = load i32, i32* @IO_APP_UNITCFG, align 4
  %48 = call i64 @__genwqe_readq(%struct.genwqe_dev* %46, i32 %47)
  %49 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %50 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %52 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IO_ILLEGAL_VALUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %60 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %89

66:                                               ; preds = %45
  %67 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %68 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %69 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @genwqe_read_app_id(%struct.genwqe_dev* %67, i32 %70, i32 4)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %78 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  br label %88

79:                                               ; preds = %66
  %80 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %81 = load i32, i32* @IO_SLU_BITSTREAM, align 4
  %82 = call i64 @__genwqe_readq(%struct.genwqe_dev* %80, i32 %81)
  %83 = load i64, i64* @IO_ILLEGAL_VALUE, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %87 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %56, %38, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @genwqe_get_slu_id(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_read_app_id(%struct.genwqe_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
