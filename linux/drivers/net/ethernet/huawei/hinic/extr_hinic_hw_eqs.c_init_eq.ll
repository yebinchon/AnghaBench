; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_init_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_init_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i64, i32, %struct.msix_entry, %struct.hinic_hwif*, i32, %struct.hinic_eq_work, i32, i64, i64, i8*, i8* }
%struct.msix_entry = type { i32, i32 }
%struct.hinic_eq_work = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_AEQ = common dso_local global i32 0, align 4
@HINIC_AEQE_SIZE = common dso_local global i32 0, align 4
@HINIC_CEQ = common dso_local global i32 0, align 4
@HINIC_CEQE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid EQ type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"num elements in eq page != power of 2\0A\00", align 1
@EQ_MAX_PAGES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"too many pages for eq\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to allocate pages for eq\0A\00", align 1
@eq_irq_work = common dso_local global i32 0, align 4
@ceq_tasklet = common dso_local global i32 0, align 4
@HINIC_EQ_MSIX_PENDING_LIMIT_DEFAULT = common dso_local global i32 0, align 4
@HINIC_EQ_MSIX_COALESC_TIMER_DEFAULT = common dso_local global i32 0, align 4
@HINIC_EQ_MSIX_LLI_TIMER_DEFAULT = common dso_local global i32 0, align 4
@HINIC_EQ_MSIX_LLI_CREDIT_LIMIT_DEFAULT = common dso_local global i32 0, align 4
@HINIC_EQ_MSIX_RESEND_TIMER_DEFAULT = common dso_local global i32 0, align 4
@aeq_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"hinic_aeq\00", align 1
@ceq_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"hinic_ceq\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to request irq for the EQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_eq*, %struct.hinic_hwif*, i32, i32, i8*, i8*, i64)* @init_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_eq(%struct.hinic_eq* %0, %struct.hinic_hwif* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.msix_entry, align 4
  %10 = alloca %struct.hinic_eq*, align 8
  %11 = alloca %struct.hinic_hwif*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.hinic_eq_work*, align 8
  %19 = bitcast %struct.msix_entry* %9 to i64*
  store i64 %6, i64* %19, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %10, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %21 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %16, align 8
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  %24 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %25 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %24, i32 0, i32 5
  store %struct.hinic_hwif* %23, %struct.hinic_hwif** %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %28 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %31 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %34 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %33, i32 0, i32 12
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %37 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %39 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %38, i32 0, i32 5
  %40 = load %struct.hinic_hwif*, %struct.hinic_hwif** %39, align 8
  %41 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %42 = call i32 @EQ_CONS_IDX_REG_ADDR(%struct.hinic_eq* %41)
  %43 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %40, i32 %42, i32 0)
  %44 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %45 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %44, i32 0, i32 5
  %46 = load %struct.hinic_hwif*, %struct.hinic_hwif** %45, align 8
  %47 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %48 = call i32 @EQ_PROD_IDX_REG_ADDR(%struct.hinic_eq* %47)
  %49 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %46, i32 %48, i32 0)
  %50 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %51 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %53 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @HINIC_AEQ, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %7
  %58 = load i32, i32* @HINIC_AEQE_SIZE, align 4
  %59 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %60 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  br label %76

61:                                               ; preds = %7
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @HINIC_CEQ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @HINIC_CEQE_SIZE, align 4
  %67 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %68 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  br label %75

69:                                               ; preds = %61
  %70 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %201

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 @GET_EQ_NUM_PAGES(%struct.hinic_eq* %77, i8* %78)
  %80 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %81 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @GET_EQ_NUM_ELEMS_IN_PG(%struct.hinic_eq* %82, i8* %83)
  %85 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %86 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %88 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %87, i32 0, i32 4
  %89 = bitcast %struct.msix_entry* %88 to i8*
  %90 = bitcast %struct.msix_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  %91 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %92 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %95 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %93, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %76
  %101 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %201

106:                                              ; preds = %76
  %107 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %108 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @EQ_MAX_PAGES, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %201

118:                                              ; preds = %106
  %119 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %120 = call i32 @set_eq_ctrls(%struct.hinic_eq* %119)
  %121 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %122 = call i32 @eq_update_ci(%struct.hinic_eq* %121)
  %123 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %124 = call i32 @alloc_eq_pages(%struct.hinic_eq* %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %8, align 4
  br label %201

132:                                              ; preds = %118
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @HINIC_AEQ, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %138 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %137, i32 0, i32 7
  store %struct.hinic_eq_work* %138, %struct.hinic_eq_work** %18, align 8
  %139 = load %struct.hinic_eq_work*, %struct.hinic_eq_work** %18, align 8
  %140 = getelementptr inbounds %struct.hinic_eq_work, %struct.hinic_eq_work* %139, i32 0, i32 0
  %141 = load i32, i32* @eq_irq_work, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  br label %155

143:                                              ; preds = %132
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @HINIC_CEQ, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %149 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %148, i32 0, i32 6
  %150 = load i32, i32* @ceq_tasklet, align 4
  %151 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %152 = ptrtoint %struct.hinic_eq* %151 to i64
  %153 = call i32 @tasklet_init(i32* %149, i32 %150, i64 %152)
  br label %154

154:                                              ; preds = %147, %143
  br label %155

155:                                              ; preds = %154, %136
  %156 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %157 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %156, i32 0, i32 5
  %158 = load %struct.hinic_hwif*, %struct.hinic_hwif** %157, align 8
  %159 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %160 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HINIC_EQ_MSIX_PENDING_LIMIT_DEFAULT, align 4
  %164 = load i32, i32* @HINIC_EQ_MSIX_COALESC_TIMER_DEFAULT, align 4
  %165 = load i32, i32* @HINIC_EQ_MSIX_LLI_TIMER_DEFAULT, align 4
  %166 = load i32, i32* @HINIC_EQ_MSIX_LLI_CREDIT_LIMIT_DEFAULT, align 4
  %167 = load i32, i32* @HINIC_EQ_MSIX_RESEND_TIMER_DEFAULT, align 4
  %168 = call i32 @hinic_msix_attr_set(%struct.hinic_hwif* %158, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @HINIC_AEQ, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %155
  %173 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %9, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @aeq_interrupt, align 4
  %176 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %177 = call i32 @request_irq(i32 %174, i32 %175, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.hinic_eq* %176)
  store i32 %177, i32* %17, align 4
  br label %189

178:                                              ; preds = %155
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @HINIC_CEQ, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %9, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ceq_interrupt, align 4
  %186 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %187 = call i32 @request_irq(i32 %184, i32 %185, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.hinic_eq* %186)
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %182, %178
  br label %189

189:                                              ; preds = %188, %172
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 0
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %197

196:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %201

197:                                              ; preds = %192
  %198 = load %struct.hinic_eq*, %struct.hinic_eq** %10, align 8
  %199 = call i32 @free_eq_pages(%struct.hinic_eq* %198)
  %200 = load i32, i32* %17, align 4
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %197, %196, %127, %112, %100, %69
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

declare dso_local i32 @EQ_CONS_IDX_REG_ADDR(%struct.hinic_eq*) #1

declare dso_local i32 @EQ_PROD_IDX_REG_ADDR(%struct.hinic_eq*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @GET_EQ_NUM_PAGES(%struct.hinic_eq*, i8*) #1

declare dso_local i32 @GET_EQ_NUM_ELEMS_IN_PG(%struct.hinic_eq*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_eq_ctrls(%struct.hinic_eq*) #1

declare dso_local i32 @eq_update_ci(%struct.hinic_eq*) #1

declare dso_local i32 @alloc_eq_pages(%struct.hinic_eq*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @hinic_msix_attr_set(%struct.hinic_hwif*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hinic_eq*) #1

declare dso_local i32 @free_eq_pages(%struct.hinic_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
