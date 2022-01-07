; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_delete_knode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_delete_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.adapter = type { %struct.TYPE_4__, %struct.cxgb4_tc_u32_table*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cxgb4_tc_u32_table = type { i32, %struct.cxgb4_link* }
%struct.cxgb4_link = type { i32, i32, i32*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Location %d out of range for deletion. Max: %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_delete_knode(%struct.net_device* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cxgb4_link*, align 8
  %12 = alloca %struct.cxgb4_tc_u32_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.adapter* @netdev2adap(%struct.net_device* %16)
  store %struct.adapter* %17, %struct.adapter** %6, align 8
  store %struct.cxgb4_link* null, %struct.cxgb4_link** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @can_tc_u32_offload(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %184

24:                                               ; preds = %2
  %25 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %26 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1048575
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ugt i32 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.adapter*, %struct.adapter** %6, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %184

48:                                               ; preds = %24
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %50, align 8
  store %struct.cxgb4_tc_u32_table* %51, %struct.cxgb4_tc_u32_table** %12, align 8
  %52 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %53 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %57 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TC_U32_USERHTID(i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 2048
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %12, align 8
  %66 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %184

72:                                               ; preds = %63, %48
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 2048
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %12, align 8
  %77 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %76, i32 0, i32 1
  %78 = load %struct.cxgb4_link*, %struct.cxgb4_link** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %78, i64 %81
  store %struct.cxgb4_link* %82, %struct.cxgb4_link** %11, align 8
  %83 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %84 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %184

90:                                               ; preds = %75
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %93 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @test_bit(i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %184

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %72
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @cxgb4_del_filter(%struct.net_device* %102, i32 %103, i32* null)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %182

108:                                              ; preds = %101
  %109 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %110 = icmp ne %struct.cxgb4_link* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %114 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @clear_bit(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %108
  %118 = load %struct.adapter*, %struct.adapter** %6, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %178, %117
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %12, align 8
  %125 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %122
  %129 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %12, align 8
  %130 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %129, i32 0, i32 1
  %131 = load %struct.cxgb4_link*, %struct.cxgb4_link** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %131, i64 %133
  store %struct.cxgb4_link* %134, %struct.cxgb4_link** %11, align 8
  %135 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %136 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %177

140:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %166, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %148 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @test_bit(i32 %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  br label %166

153:                                              ; preds = %145
  %154 = load %struct.net_device*, %struct.net_device** %4, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @__cxgb4_del_filter(%struct.net_device* %154, i32 %155, i32* null, i32* null)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %182

160:                                              ; preds = %153
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %163 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @clear_bit(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %152
  %167 = load i32, i32* %10, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %141

169:                                              ; preds = %141
  %170 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %171 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %170, i32 0, i32 2
  store i32* null, i32** %171, align 8
  %172 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %173 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.cxgb4_link*, %struct.cxgb4_link** %11, align 8
  %175 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %174, i32 0, i32 1
  %176 = call i32 @memset(i32* %175, i32 0, i32 4)
  br label %181

177:                                              ; preds = %128
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %122

181:                                              ; preds = %169, %122
  br label %182

182:                                              ; preds = %181, %159, %107
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %97, %87, %69, %36, %21
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @can_tc_u32_offload(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @TC_U32_USERHTID(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @cxgb4_del_filter(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @__cxgb4_del_filter(%struct.net_device*, i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
