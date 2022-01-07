; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_update_uap_custom_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_update_uap_custom_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ie = type { i32, i32 }
%struct.mwifiex_ie_list = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TLV_TYPE_MGMT_IE = common dso_local global i32 0, align 4
@IEEE_MAX_IE_SIZE = common dso_local global i32 0, align 4
@MWIFIEX_AUTO_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ie*, i32*, %struct.mwifiex_ie*, i32*, %struct.mwifiex_ie*, i32*)* @mwifiex_update_uap_custom_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private* %0, %struct.mwifiex_ie* %1, i32* %2, %struct.mwifiex_ie* %3, i32* %4, %struct.mwifiex_ie* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca %struct.mwifiex_ie*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mwifiex_ie*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mwifiex_ie*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mwifiex_ie_list*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %9, align 8
  store %struct.mwifiex_ie* %1, %struct.mwifiex_ie** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.mwifiex_ie* %3, %struct.mwifiex_ie** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.mwifiex_ie* %5, %struct.mwifiex_ie** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mwifiex_ie_list* @kzalloc(i32 16, i32 %20)
  store %struct.mwifiex_ie_list* %21, %struct.mwifiex_ie_list** %16, align 8
  %22 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %23 = icmp ne %struct.mwifiex_ie_list* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %198

27:                                               ; preds = %7
  %28 = load i32, i32* @TLV_TYPE_MGMT_IE, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %33 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = bitcast %struct.TYPE_2__* %34 to i32*
  store i32* %35, i32** %17, align 8
  %36 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %10, align 8
  %37 = icmp ne %struct.mwifiex_ie* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %27
  %39 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 8, %40
  %42 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %10, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = add i64 %41, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %10, align 8
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @memcpy(i32* %49, %struct.mwifiex_ie* %50, i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %17, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %17, align 8
  %57 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %58 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %57, i32 0, i32 1
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @le16_unaligned_add_cpu(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %38, %27
  %62 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %63 = icmp ne %struct.mwifiex_ie* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 8, %66
  %68 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %69 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = add i64 %67, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @memcpy(i32* %75, %struct.mwifiex_ie* %76, i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %17, align 8
  %83 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %84 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %83, i32 0, i32 1
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @le16_unaligned_add_cpu(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %64, %61
  %88 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %14, align 8
  %89 = icmp ne %struct.mwifiex_ie* %88, null
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 8, %92
  %94 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %14, align 8
  %95 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = sext i32 %97 to i64
  %99 = add i64 %93, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %18, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %14, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @memcpy(i32* %101, %struct.mwifiex_ie* %102, i32 %103)
  %105 = load i32, i32* %18, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %17, align 8
  %109 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %110 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %109, i32 0, i32 1
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @le16_unaligned_add_cpu(i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %90, %87
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %115 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %116 = call i32 @mwifiex_update_autoindex_ies(%struct.mwifiex_private* %114, %struct.mwifiex_ie_list* %115)
  store i32 %116, i32* %19, align 4
  %117 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %118 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32* %121, i32** %17, align 8
  %122 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %10, align 8
  %123 = icmp ne %struct.mwifiex_ie* %122, null
  br i1 %123, label %124, label %152

124:                                              ; preds = %113
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %131 = getelementptr inbounds %struct.mwifiex_ie_list, %struct.mwifiex_ie_list* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 8, %139
  %141 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %10, align 8
  %142 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le16_to_cpu(i32 %143)
  %145 = sext i32 %144 to i64
  %146 = add i64 %140, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %17, align 8
  br label %152

152:                                              ; preds = %129, %124, %113
  %153 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %154 = icmp ne %struct.mwifiex_ie* %153, null
  br i1 %154, label %155, label %180

155:                                              ; preds = %152
  %156 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %157 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le16_to_cpu(i32 %158)
  %160 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %155
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %167 = sext i32 %166 to i64
  %168 = sub i64 8, %167
  %169 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %12, align 8
  %170 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le16_to_cpu(i32 %171)
  %173 = sext i32 %172 to i64
  %174 = add i64 %168, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load i32*, i32** %17, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %17, align 8
  br label %180

180:                                              ; preds = %162, %155, %152
  %181 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %14, align 8
  %182 = icmp ne %struct.mwifiex_ie* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %14, align 8
  %185 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @le16_to_cpu(i32 %186)
  %188 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %15, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %183, %180
  %195 = load %struct.mwifiex_ie_list*, %struct.mwifiex_ie_list** %16, align 8
  %196 = call i32 @kfree(%struct.mwifiex_ie_list* %195)
  %197 = load i32, i32* %19, align 4
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %194, %24
  %199 = load i32, i32* %8, align 4
  ret i32 %199
}

declare dso_local %struct.mwifiex_ie_list* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mwifiex_ie*, i32) #1

declare dso_local i32 @le16_unaligned_add_cpu(i32*, i32) #1

declare dso_local i32 @mwifiex_update_autoindex_ies(%struct.mwifiex_private*, %struct.mwifiex_ie_list*) #1

declare dso_local i32 @kfree(%struct.mwifiex_ie_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
