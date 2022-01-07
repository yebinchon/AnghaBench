; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fetch_pf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fetch_pf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32 }
%struct.hnae3_knic_private_info = type { i32 }

@cmdq_reg_addr_list = common dso_local global i64* null, align 8
@MAX_SEPARATE_NUM = common dso_local global i32 0, align 4
@REG_NUM_REMAIN_MASK = common dso_local global i32 0, align 4
@SEPARATOR_VALUE = common dso_local global i8* null, align 8
@common_reg_addr_list = common dso_local global i64* null, align 8
@ring_reg_addr_list = common dso_local global i64* null, align 8
@tqp_intr_reg_addr_list = common dso_local global i64* null, align 8
@HCLGE_RING_INT_REG_OFFSET = common dso_local global i32 0, align 4
@HCLGE_RING_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i8*, %struct.hnae3_knic_private_info*)* @hclge_fetch_pf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_fetch_pf_reg(%struct.hclge_dev* %0, i8* %1, %struct.hnae3_knic_private_info* %2) #0 {
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hnae3_knic_private_info* %2, %struct.hnae3_knic_private_info** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i64*, i64** @cmdq_reg_addr_list, align 8
  %16 = call i32 @ARRAY_SIZE(i64* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %20 = and i32 %18, %19
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 1
  %29 = load i64*, i64** @cmdq_reg_addr_list, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @hclge_read_dev(i32* %28, i64 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i64*, i64** @common_reg_addr_list, align 8
  %59 = call i32 @ARRAY_SIZE(i64* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %63 = and i32 %61, %62
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %81, %54
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 1
  %72 = load i64*, i64** @common_reg_addr_list, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @hclge_read_dev(i32* %71, i64 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %65

84:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i64*, i64** @ring_reg_addr_list, align 8
  %104 = call i32 @ARRAY_SIZE(i64* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %108 = and i32 %106, %107
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %154, %97
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %113 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %157

116:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %137, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %123 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %122, i32 0, i32 1
  %124 = load i64*, i64** @ring_reg_addr_list, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = mul nsw i32 512, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = call i8* @hclge_read_dev(i32* %123, i64 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %117

140:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %150, %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load i32*, i32** %12, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %12, align 8
  store i32 %147, i32* %148, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %141

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %110

157:                                              ; preds = %110
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %162 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %160, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  %167 = load i64*, i64** @tqp_intr_reg_addr_list, align 8
  %168 = call i32 @ARRAY_SIZE(i64* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* @MAX_SEPARATE_NUM, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @REG_NUM_REMAIN_MASK, align 4
  %172 = and i32 %170, %171
  %173 = sub nsw i32 %169, %172
  store i32 %173, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %219, %157
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %177 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 1
  %180 = icmp slt i32 %175, %179
  br i1 %180, label %181, label %222

181:                                              ; preds = %174
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %202, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %188 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %187, i32 0, i32 1
  %189 = load i64*, i64** @tqp_intr_reg_addr_list, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = mul nsw i32 4, %194
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %193, %196
  %198 = call i8* @hclge_read_dev(i32* %188, i64 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load i32*, i32** %12, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %12, align 8
  store i32 %199, i32* %200, align 4
  br label %202

202:                                              ; preds = %186
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %182

205:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %215, %205
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %206
  %211 = load i8*, i8** @SEPARATOR_VALUE, align 8
  %212 = ptrtoint i8* %211 to i32
  %213 = load i32*, i32** %12, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %12, align 8
  store i32 %212, i32* %213, align 4
  br label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %206

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %174

222:                                              ; preds = %174
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %223, %224
  %226 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %227 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  %230 = mul nsw i32 %225, %229
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  ret i32 %233
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i8* @hclge_read_dev(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
