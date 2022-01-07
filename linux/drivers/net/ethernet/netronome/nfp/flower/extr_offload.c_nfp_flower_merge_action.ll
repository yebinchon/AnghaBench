; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_merge_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_merge_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfp_fl_push_vlan = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@NFP_FL_SC_ACT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*)* @nfp_flower_merge_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_merge_action(%struct.nfp_fl_payload* %0, %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_fl_payload*, align 8
  %7 = alloca %struct.nfp_fl_payload*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_fl_push_vlan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %5, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %6, align 8
  store %struct.nfp_fl_payload* %2, %struct.nfp_fl_payload** %7, align 8
  store %struct.nfp_fl_push_vlan* null, %struct.nfp_fl_push_vlan** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %167

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %167

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @NFP_FL_SC_ACT_NULL, align 4
  %47 = call i32 @cpu_to_be32(i32 %46)
  %48 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %49 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %59

51:                                               ; preds = %42
  %52 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %53 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %57 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %60, %61
  %63 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %64 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %67 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %71 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @nfp_flower_copy_pre_actions(i8* %69, i8* %72, i32 %73, i32* %13)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %14, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %84 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @nfp_flower_copy_pre_actions(i8* %82, i8* %85, i32 %86, i32* null)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %14, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %59
  %98 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %99 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** %16, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @nfp_fl_verify_post_tun_acts(i8* %104, i32 %105, %struct.nfp_fl_push_vlan** %12)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %4, align 4
  br label %167

111:                                              ; preds = %97
  %112 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %12, align 8
  %113 = icmp ne %struct.nfp_fl_push_vlan* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = add i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = sub i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %114, %111
  br label %124

124:                                              ; preds = %123, %59
  %125 = load i8*, i8** %14, align 8
  %126 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %127 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @memcpy(i8* %125, i8* %131, i32 %132)
  %134 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %12, align 8
  %135 = icmp ne %struct.nfp_fl_push_vlan* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %124
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %12, align 8
  %140 = call i32 @nfp_fl_push_vlan_after_tun(i8* %137, i32 %138, %struct.nfp_fl_push_vlan* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %4, align 4
  br label %167

145:                                              ; preds = %136
  %146 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %147 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = sub i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 8
  br label %153

153:                                              ; preds = %145, %124
  %154 = load i32, i32* %8, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = zext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %160 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @memcpy(i8* %158, i8* %164, i32 %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %153, %143, %109, %39, %30
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_flower_copy_pre_actions(i8*, i8*, i32, i32*) #1

declare dso_local i32 @nfp_fl_verify_post_tun_acts(i8*, i32, %struct.nfp_fl_push_vlan**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nfp_fl_push_vlan_after_tun(i8*, i32, %struct.nfp_fl_push_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
