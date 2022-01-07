; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_save_curr_bcn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_save_curr_bcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_bssdescriptor }
%struct.mwifiex_bssdescriptor = type { i64, i64, i64, i8*, i64, i64, i64, i64, i64, i8*, i64, i8*, i64, %struct.ieee80211_ht_operation*, i64, %struct.ieee80211_ht_cap*, i64, %struct.ieee_types_generic*, i64, %struct.ieee_types_vendor_specific* }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee_types_generic = type { i32 }
%struct.ieee_types_vendor_specific = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"info: current beacon saved %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_save_curr_bcn(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.mwifiex_bssdescriptor* %6, %struct.mwifiex_bssdescriptor** %3, align 8
  %7 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %213

12:                                               ; preds = %1
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %17, %12
  %26 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kfree(i64 %33)
  %35 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %36 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i64 @kmalloc(i64 %37, i32 %38)
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %25
  br label %213

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %53 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %56 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i64 %51, i64 %54, i64 %57)
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @INFO, align 4
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mwifiex_dbg(i32 %61, i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %68 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %71 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %73 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %72, i32 0, i32 19
  %74 = load %struct.ieee_types_vendor_specific*, %struct.ieee_types_vendor_specific** %73, align 8
  %75 = icmp ne %struct.ieee_types_vendor_specific* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %48
  %77 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %78 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %81 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %80, i32 0, i32 18
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = inttoptr i64 %83 to %struct.ieee_types_vendor_specific*
  %85 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %86 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %85, i32 0, i32 19
  store %struct.ieee_types_vendor_specific* %84, %struct.ieee_types_vendor_specific** %86, align 8
  br label %87

87:                                               ; preds = %76, %48
  %88 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %89 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %88, i32 0, i32 17
  %90 = load %struct.ieee_types_generic*, %struct.ieee_types_generic** %89, align 8
  %91 = icmp ne %struct.ieee_types_generic* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %97 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %96, i32 0, i32 16
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = inttoptr i64 %99 to %struct.ieee_types_generic*
  %101 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %102 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %101, i32 0, i32 17
  store %struct.ieee_types_generic* %100, %struct.ieee_types_generic** %102, align 8
  br label %103

103:                                              ; preds = %92, %87
  %104 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %105 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %104, i32 0, i32 15
  %106 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %105, align 8
  %107 = icmp ne %struct.ieee80211_ht_cap* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %110 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %113 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %112, i32 0, i32 14
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = inttoptr i64 %115 to %struct.ieee80211_ht_cap*
  %117 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %118 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %117, i32 0, i32 15
  store %struct.ieee80211_ht_cap* %116, %struct.ieee80211_ht_cap** %118, align 8
  br label %119

119:                                              ; preds = %108, %103
  %120 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %121 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %120, i32 0, i32 13
  %122 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %121, align 8
  %123 = icmp ne %struct.ieee80211_ht_operation* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %126 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %129 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %128, i32 0, i32 12
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = inttoptr i64 %131 to %struct.ieee80211_ht_operation*
  %133 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %134 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %133, i32 0, i32 13
  store %struct.ieee80211_ht_operation* %132, %struct.ieee80211_ht_operation** %134, align 8
  br label %135

135:                                              ; preds = %124, %119
  %136 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %137 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %136, i32 0, i32 11
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %142 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %145 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %144, i32 0, i32 10
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %150 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %149, i32 0, i32 11
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %140, %135
  %152 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %153 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %152, i32 0, i32 9
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %158 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %161 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %166 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %165, i32 0, i32 9
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %156, %151
  %168 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %169 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %174 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %177 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %181 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %180, i32 0, i32 7
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %172, %167
  %183 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %184 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %189 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %192 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %196 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %195, i32 0, i32 5
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %187, %182
  %198 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %199 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %204 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %207 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %205, %208
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %3, align 8
  %212 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %11, %46, %202, %197
  ret void
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
