; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_read_vsec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_read_vsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ABORTING: CXL VSEC not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CXL_VSEC_MIN_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"ABORTING: CXL VSEC too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXL_VSEC_USER_IMAGE_LOADED = common dso_local global i32 0, align 4
@CXL_VSEC_PERST_LOADS_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @cxl_read_vsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_read_vsec(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = call i32 @find_cxl_vsec(%struct.pci_dev* %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %144

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CXL_READ_VSEC_LENGTH(%struct.pci_dev* %23, i32 %24, i64* %11)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @CXL_VSEC_MIN_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %144

35:                                               ; preds = %22
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.cxl*, %struct.cxl** %4, align 8
  %39 = getelementptr inbounds %struct.cxl, %struct.cxl* %38, i32 0, i32 11
  %40 = call i32 @CXL_READ_VSEC_STATUS(%struct.pci_dev* %36, i32 %37, i32* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cxl*, %struct.cxl** %4, align 8
  %44 = getelementptr inbounds %struct.cxl, %struct.cxl* %43, i32 0, i32 10
  %45 = call i32 @CXL_READ_VSEC_PSL_REVISION(%struct.pci_dev* %41, i32 %42, i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.cxl*, %struct.cxl** %4, align 8
  %49 = getelementptr inbounds %struct.cxl, %struct.cxl* %48, i32 0, i32 9
  %50 = call i32 @CXL_READ_VSEC_CAIA_MAJOR(%struct.pci_dev* %46, i32 %47, i32* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.cxl*, %struct.cxl** %4, align 8
  %54 = getelementptr inbounds %struct.cxl, %struct.cxl* %53, i32 0, i32 8
  %55 = call i32 @CXL_READ_VSEC_CAIA_MINOR(%struct.pci_dev* %51, i32 %52, i32* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cxl*, %struct.cxl** %4, align 8
  %59 = getelementptr inbounds %struct.cxl, %struct.cxl* %58, i32 0, i32 7
  %60 = call i32 @CXL_READ_VSEC_BASE_IMAGE(%struct.pci_dev* %56, i32 %57, i32* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @CXL_READ_VSEC_IMAGE_STATE(%struct.pci_dev* %61, i32 %62, i32* %12)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @CXL_VSEC_USER_IMAGE_LOADED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.cxl*, %struct.cxl** %4, align 8
  %72 = getelementptr inbounds %struct.cxl, %struct.cxl* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @CXL_VSEC_USER_IMAGE_LOADED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.cxl*, %struct.cxl** %4, align 8
  %81 = getelementptr inbounds %struct.cxl, %struct.cxl* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @CXL_VSEC_PERST_LOADS_IMAGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load %struct.cxl*, %struct.cxl** %4, align 8
  %90 = getelementptr inbounds %struct.cxl, %struct.cxl* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.cxl*, %struct.cxl** %4, align 8
  %94 = getelementptr inbounds %struct.cxl, %struct.cxl* %93, i32 0, i32 3
  %95 = call i32 @CXL_READ_VSEC_NAFUS(%struct.pci_dev* %91, i32 %92, i32* %94)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @CXL_READ_VSEC_AFU_DESC_OFF(%struct.pci_dev* %96, i32 %97, i32* %7)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @CXL_READ_VSEC_AFU_DESC_SIZE(%struct.pci_dev* %99, i32 %100, i32* %8)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @CXL_READ_VSEC_PS_OFF(%struct.pci_dev* %102, i32 %103, i32* %9)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @CXL_READ_VSEC_PS_SIZE(%struct.pci_dev* %105, i32 %106, i32* %10)
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %108, 64
  %110 = mul nsw i32 %109, 1024
  %111 = load %struct.cxl*, %struct.cxl** %4, align 8
  %112 = getelementptr inbounds %struct.cxl, %struct.cxl* %111, i32 0, i32 6
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %115, 64
  %117 = mul nsw i32 %116, 1024
  %118 = load %struct.cxl*, %struct.cxl** %4, align 8
  %119 = getelementptr inbounds %struct.cxl, %struct.cxl* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 %120, 64
  %122 = mul nsw i32 %121, 1024
  %123 = load %struct.cxl*, %struct.cxl** %4, align 8
  %124 = getelementptr inbounds %struct.cxl, %struct.cxl* %123, i32 0, i32 6
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 %127, 64
  %129 = mul nsw i32 %128, 1024
  %130 = load %struct.cxl*, %struct.cxl** %4, align 8
  %131 = getelementptr inbounds %struct.cxl, %struct.cxl* %130, i32 0, i32 6
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %135 = call i32 @pnv_cxl_get_irq_count(%struct.pci_dev* %134)
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.cxl*, %struct.cxl** %4, align 8
  %138 = getelementptr inbounds %struct.cxl, %struct.cxl* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 2, %139
  %141 = sub nsw i32 %136, %140
  %142 = load %struct.cxl*, %struct.cxl** %4, align 8
  %143 = getelementptr inbounds %struct.cxl, %struct.cxl* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %35, %29, %16
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @find_cxl_vsec(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @CXL_READ_VSEC_LENGTH(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @CXL_READ_VSEC_STATUS(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_PSL_REVISION(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_CAIA_MAJOR(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_CAIA_MINOR(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_BASE_IMAGE(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_IMAGE_STATE(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_NAFUS(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_AFU_DESC_OFF(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_AFU_DESC_SIZE(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_PS_OFF(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @CXL_READ_VSEC_PS_SIZE(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pnv_cxl_get_irq_count(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
