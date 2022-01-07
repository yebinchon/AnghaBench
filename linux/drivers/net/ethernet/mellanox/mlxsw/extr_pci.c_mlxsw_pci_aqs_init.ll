; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_aqs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_aqs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i64, %struct.TYPE_2__, i64, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@MLXSW_PCI_CQS_MAX = common dso_local global i64 0, align 8
@MLXSW_PCI_EQS_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unsupported number of queues\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLXSW_PCI_WQE_COUNT = common dso_local global i64 0, align 8
@MLXSW_PCI_CQE01_COUNT = common dso_local global i64 0, align 8
@MLXSW_PCI_CQE_V2 = common dso_local global i64 0, align 8
@MLXSW_PCI_CQE2_COUNT = common dso_local global i64 0, align 8
@MLXSW_PCI_EQE_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Unsupported number of async queue descriptors\0A\00", align 1
@mlxsw_pci_eq_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to initialize event queues\0A\00", align 1
@mlxsw_pci_cq_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to initialize completion queues\0A\00", align 1
@mlxsw_pci_sdq_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to initialize send descriptor queues\0A\00", align 1
@mlxsw_pci_rdq_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to initialize receive descriptor queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*)* @mlxsw_pci_aqs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_aqs_init(%struct.mlxsw_pci* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %17, i32 0, i32 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @mlxsw_cmd_mbox_zero(i8* %20)
  %22 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @mlxsw_cmd_query_aq_cap(i32 %24, i8* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %3, align 4
  br label %178

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get(i8* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_sdq_sz_get(i8* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_rdqs_get(i8* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_rdq_sz_get(i8* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_cqs_get(i8* %40)
  store i64 %41, i64* %11, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_cq_sz_get(i8* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_cqv2_sz_get(i8* %44)
  store i64 %45, i64* %13, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_eqs_get(i8* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_eq_sz_get(i8* %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %11, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %31
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @MLXSW_PCI_CQS_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @MLXSW_PCI_EQS_COUNT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %55, %31
  %64 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %178

69:                                               ; preds = %59
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @MLXSW_PCI_WQE_COUNT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %110, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %10, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 1, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @MLXSW_PCI_WQE_COUNT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %110, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @MLXSW_PCI_CQE01_COUNT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %83
  %91 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %92 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MLXSW_PCI_CQE_V2, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i64, i64* %13, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @MLXSW_PCI_CQE2_COUNT, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96, %90
  %104 = load i64, i64* %15, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @MLXSW_PCI_EQE_COUNT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %103, %96, %83, %76, %69
  %111 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %178

116:                                              ; preds = %103
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %119 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @mlxsw_pci_queue_group_init(%struct.mlxsw_pci* %120, i8* %121, i32* @mlxsw_pci_eq_ops, i64 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %3, align 4
  br label %178

131:                                              ; preds = %116
  %132 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @mlxsw_pci_queue_group_init(%struct.mlxsw_pci* %132, i8* %133, i32* @mlxsw_pci_cq_ops, i64 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %174

142:                                              ; preds = %131
  %143 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @mlxsw_pci_queue_group_init(%struct.mlxsw_pci* %143, i8* %144, i32* @mlxsw_pci_sdq_ops, i64 %145)
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %171

153:                                              ; preds = %142
  %154 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @mlxsw_pci_queue_group_init(%struct.mlxsw_pci* %154, i8* %155, i32* @mlxsw_pci_rdq_ops, i64 %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %168

164:                                              ; preds = %153
  %165 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %166 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  store i32 0, i32* %3, align 4
  br label %178

168:                                              ; preds = %160
  %169 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %170 = call i32 @mlxsw_pci_queue_group_fini(%struct.mlxsw_pci* %169, i32* @mlxsw_pci_sdq_ops)
  br label %171

171:                                              ; preds = %168, %149
  %172 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %173 = call i32 @mlxsw_pci_queue_group_fini(%struct.mlxsw_pci* %172, i32* @mlxsw_pci_cq_ops)
  br label %174

174:                                              ; preds = %171, %138
  %175 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %176 = call i32 @mlxsw_pci_queue_group_fini(%struct.mlxsw_pci* %175, i32* @mlxsw_pci_eq_ops)
  %177 = load i32, i32* %16, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %164, %126, %110, %63, %29
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @mlxsw_cmd_mbox_zero(i8*) #1

declare dso_local i32 @mlxsw_cmd_query_aq_cap(i32, i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_sdqs_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_sdq_sz_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_rdqs_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_rdq_sz_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_cqs_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_cq_sz_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_cqv2_sz_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_max_num_eqs_get(i8*) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_aq_cap_log_max_eq_sz_get(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mlxsw_pci_queue_group_init(%struct.mlxsw_pci*, i8*, i32*, i64) #1

declare dso_local i32 @mlxsw_pci_queue_group_fini(%struct.mlxsw_pci*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
