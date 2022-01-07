; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.pci_dev* }
%struct.qlcnic_hardware_context = type { i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i64* }

@QLCNIC_SIGN_CRB_OFFSET = common dso_local global i32 0, align 4
@QLCNIC_CDRP_CRB_OFFSET = common dso_local global i32 0, align 4
@QLCNIC_CDRP_RSP_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"command timeout, response = 0x%x\0A\00", align 1
@QLCNIC_CDRP_RSP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"CDRP invalid args: [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"CDRP command not supported: [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CDRP requested action not permitted: [%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"CDRP invalid or unknown cmd received: [%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CDRP command timeout: [%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CDRP command failed: [%d]\0A\00", align 1
@QLCNIC_CDRP_RSP_OK = common dso_local global i64 0, align 8
@QLCNIC_RCODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_issue_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.qlcnic_hardware_context*, align 8
  %12 = alloca i8*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %10, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  store %struct.qlcnic_hardware_context* %18, %struct.qlcnic_hardware_context** %11, align 8
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  %20 = call i64 @qlcnic_get_cmd_signature(%struct.qlcnic_hardware_context* %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %26 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 128, i32* %29, align 4
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %178

36:                                               ; preds = %2
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %38 = load i32, i32* @QLCNIC_SIGN_CRB_OFFSET, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @QLCWR32(%struct.qlcnic_adapter* %37, i32 %38, i64 %39)
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %61, %36
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @QLCNIC_CDRP_ARG(i32 %50)
  %52 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @QLCWR32(%struct.qlcnic_adapter* %49, i32 %51, i64 %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = load i32, i32* @QLCNIC_CDRP_CRB_OFFSET, align 4
  %67 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @QLCNIC_CDRP_FORM_CMD(i64 %72)
  %74 = call i32 @QLCWR32(%struct.qlcnic_adapter* %65, i32 %66, i64 %73)
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = call i64 @qlcnic_poll_rsp(%struct.qlcnic_adapter* %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @QLCNIC_CDRP_RSP_TIMEOUT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %64
  %81 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 128, i32* %89, align 4
  br label %145

90:                                               ; preds = %64
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @QLCNIC_CDRP_RSP_FAIL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %131

94:                                               ; preds = %90
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %96 = call i32 @QLCNIC_CDRP_ARG(i32 1)
  %97 = call i8* @QLCRD32(%struct.qlcnic_adapter* %95, i32 %96, i32* %7)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %98, i32* %103, align 4
  %104 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %105 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %115 [
    i32 132, label %110
    i32 129, label %111
    i32 131, label %111
    i32 130, label %112
    i32 133, label %113
    i32 128, label %114
  ]

110:                                              ; preds = %94
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %116

111:                                              ; preds = %94, %94
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %116

112:                                              ; preds = %94
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %116

113:                                              ; preds = %94
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %116

114:                                              ; preds = %94
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %116

115:                                              ; preds = %94
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %116

116:                                              ; preds = %115, %114, %113, %112, %111, %110
  %117 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i8*, i8** %12, align 8
  %120 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %121 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 @dev_err(i32* %118, i8* %119, i64 %126)
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %129 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %130 = call i32 @qlcnic_dump_mbx(%struct.qlcnic_adapter* %128, %struct.qlcnic_cmd_args* %129)
  br label %144

131:                                              ; preds = %90
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @QLCNIC_CDRP_RSP_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i64, i64* @QLCNIC_RCODE_SUCCESS, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %139 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %135, %131
  br label %144

144:                                              ; preds = %143, %116
  br label %145

145:                                              ; preds = %144, %80
  store i32 1, i32* %6, align 4
  br label %146

146:                                              ; preds = %166, %145
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %149 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %146
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @QLCNIC_CDRP_ARG(i32 %155)
  %157 = call i8* @QLCRD32(%struct.qlcnic_adapter* %154, i32 %156, i32* %7)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %160 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %146

169:                                              ; preds = %146
  %170 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %171 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %170)
  %172 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %173 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %169, %24
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @qlcnic_get_cmd_signature(%struct.qlcnic_hardware_context*) #1

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i64) #1

declare dso_local i32 @QLCNIC_CDRP_ARG(i32) #1

declare dso_local i64 @QLCNIC_CDRP_FORM_CMD(i64) #1

declare dso_local i64 @qlcnic_poll_rsp(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i8* @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @qlcnic_dump_mbx(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
