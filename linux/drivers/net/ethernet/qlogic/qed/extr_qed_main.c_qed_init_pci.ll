; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_init_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32, i8*, %struct.pci_dev*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Cannot enable PCI device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"No memory region found in bar #0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"No memory region found in bar #2\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"qed\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to request PCI memory resources\0A\00", align 1
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@PCI_REVISION_ID_ERROR_VAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [86 x i8] c"Detected PCI device error [rev_id 0x%x]. Probably due to prior indication. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"The bus is not PCI Express\0A\00", align 1
@PCI_CAP_ID_PM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot find power management capability\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Cannot map register space, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"No Doorbell bar available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Cannot map doorbell space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.pci_dev*)* @qed_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_pci(%struct.qed_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %9, i32 0, i32 3
  store %struct.pci_dev* %8, %struct.pci_dev** %10, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %17 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %192

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_resource_flags(%struct.pci_dev* %19, i32 0)
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %26 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %189

29:                                               ; preds = %18
  %30 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %31 = call i64 @IS_PF(%struct.qed_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = call i32 @pci_resource_flags(%struct.pci_dev* %34, i32 2)
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %41 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %189

44:                                               ; preds = %33, %29
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = call i32 @pci_request_regions(%struct.pci_dev* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %56 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %189

57:                                               ; preds = %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = call i32 @pci_set_master(%struct.pci_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = call i32 @pci_save_state(%struct.pci_dev* %60)
  br label %62

62:                                               ; preds = %57, %44
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = load i32, i32* @PCI_REVISION_ID, align 4
  %65 = call i32 @pci_read_config_byte(%struct.pci_dev* %63, i32 %64, i64* %6)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @PCI_REVISION_ID_ERROR_VAL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %70, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %186

75:                                               ; preds = %62
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = call i32 @pci_is_pcie(%struct.pci_dev* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %81 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %186

84:                                               ; preds = %75
  %85 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %86 = load i32, i32* @PCI_CAP_ID_PM, align 4
  %87 = call i32 @pci_find_capability(%struct.pci_dev* %85, i32 %86)
  %88 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %89 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 8
  %91 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %92 = call i64 @IS_PF(%struct.qed_dev* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %96 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %102 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %94, %84
  %104 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %105 = call i32 @qed_set_coherency_mask(%struct.qed_dev* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %186

109:                                              ; preds = %103
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = call i8* @pci_resource_start(%struct.pci_dev* %110, i32 0)
  %112 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %113 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = call i32 @pci_resource_end(%struct.pci_dev* %115, i32 0)
  %117 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %118 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %124 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %127 = call i32 @pci_ioremap_bar(%struct.pci_dev* %126, i32 0)
  %128 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %129 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %131 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %109
  %135 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %136 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %186

139:                                              ; preds = %109
  %140 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %141 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %140, i32 0, i32 3
  %142 = load %struct.pci_dev*, %struct.pci_dev** %141, align 8
  %143 = call i8* @pci_resource_start(%struct.pci_dev* %142, i32 2)
  %144 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %145 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %147 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %146, i32 0, i32 3
  %148 = load %struct.pci_dev*, %struct.pci_dev** %147, align 8
  %149 = call i32 @pci_resource_len(%struct.pci_dev* %148, i32 2)
  %150 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %151 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %153 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %139
  %157 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %158 = call i64 @IS_PF(%struct.qed_dev* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %162 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %194

165:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %194

166:                                              ; preds = %139
  %167 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %168 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %171 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ioremap_wc(i8* %169, i32 %172)
  %174 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %175 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %177 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %166
  %181 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %182 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %194

185:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %194

186:                                              ; preds = %134, %108, %79, %69
  %187 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %188 = call i32 @pci_release_regions(%struct.pci_dev* %187)
  br label %189

189:                                              ; preds = %186, %54, %39, %24
  %190 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %191 = call i32 @pci_disable_device(%struct.pci_dev* %190)
  br label %192

192:                                              ; preds = %189, %15
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %185, %180, %165, %160
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, ...) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_PF(%struct.qed_dev*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @qed_set_coherency_mask(%struct.qed_dev*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_wc(i8*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
