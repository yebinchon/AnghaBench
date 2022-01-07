; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_set_TL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_set_TL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PNV_OCXL_TL_RATE_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCXL_DVSEC_TL_SEND_RATE = common dso_local global i64 0, align 8
@OCXL_DVSEC_TL_SEND_CAP = common dso_local global i64 0, align 8
@OCXL_DVSEC_TL_RECV_RATE = common dso_local global i64 0, align 8
@OCXL_DVSEC_TL_RECV_CAP = common dso_local global i64 0, align 8
@OCXL_DVSEC_TL_BACKOFF_TIMERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_config_set_TL(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PCI_FUNC(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

19:                                               ; preds = %2
  %20 = load i32, i32* @PNV_OCXL_TL_RATE_BUF_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %148

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @PNV_OCXL_TL_RATE_BUF_SIZE, align 4
  %32 = call i32 @pnv_ocxl_get_tl_cap(%struct.pci_dev* %29, i64* %11, i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %144

36:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PNV_OCXL_TL_RATE_BUF_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %7, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @OCXL_DVSEC_TL_SEND_RATE, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be32_to_cpu(i32 %56)
  %58 = call i32 @pci_write_config_dword(%struct.pci_dev* %47, i64 %54, i64 %57)
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %9, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i64, i64* %11, align 8
  %64 = ashr i64 %63, 32
  store i64 %64, i64* %6, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @OCXL_DVSEC_TL_SEND_CAP, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @pci_write_config_dword(%struct.pci_dev* %65, i64 %69, i64 %70)
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @GENMASK(i32 31, i32 0)
  %74 = and i64 %72, %73
  store i64 %74, i64* %6, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @OCXL_DVSEC_TL_SEND_CAP, align 8
  %79 = add nsw i64 %77, %78
  %80 = add nsw i64 %79, 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @pci_write_config_dword(%struct.pci_dev* %75, i64 %80, i64 %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %105, %62
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PNV_OCXL_TL_RATE_BUF_SIZE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @OCXL_DVSEC_TL_RECV_RATE, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 @pci_read_config_dword(%struct.pci_dev* %88, i64 %95, i64* %6)
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %7, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @cpu_to_be32(i64 %102)
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %9, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @OCXL_DVSEC_TL_RECV_CAP, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @pci_read_config_dword(%struct.pci_dev* %109, i64 %113, i64* %6)
  %115 = load i64, i64* %6, align 8
  %116 = shl i64 %115, 32
  store i64 %116, i64* %11, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @OCXL_DVSEC_TL_RECV_CAP, align 8
  %121 = add nsw i64 %119, %120
  %122 = add nsw i64 %121, 4
  %123 = call i32 @pci_read_config_dword(%struct.pci_dev* %117, i64 %122, i64* %6)
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %11, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %11, align 8
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @__pa(i8* %129)
  %131 = load i32, i32* @PNV_OCXL_TL_RATE_BUF_SIZE, align 4
  %132 = call i32 @pnv_ocxl_set_tl_conf(%struct.pci_dev* %127, i64 %128, i32 %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %108
  br label %144

136:                                              ; preds = %108
  store i32 32, i32* %8, align 4
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @OCXL_DVSEC_TL_BACKOFF_TIMERS, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @pci_write_config_byte(%struct.pci_dev* %137, i64 %141, i32 %142)
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %136, %135, %35
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @kfree(i8* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %25, %18
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pnv_ocxl_get_tl_cap(%struct.pci_dev*, i64*, i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @pnv_ocxl_set_tl_conf(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
