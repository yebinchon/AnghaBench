; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_setup_proc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_setup_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.airo_info = type { i32, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }

@airo_perm = common dso_local global i32 0, align 4
@airo_entry = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_kuid = common dso_local global i32 0, align 4
@proc_kgid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"StatsDelta\00", align 1
@proc_perm = common dso_local global i32 0, align 4
@proc_statsdelta_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Stats\00", align 1
@proc_stats_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@proc_status_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@proc_config_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@proc_SSID_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"APList\00", align 1
@proc_APList_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"BSSList\00", align 1
@proc_BSSList_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"WepKey\00", align 1
@proc_wepkey_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.airo_info*)* @setup_proc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_proc_entry(%struct.net_device* %0, %struct.airo_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.airo_info* %1, %struct.airo_info** %5, align 8
  %7 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %8 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcpy(i32 %9, i32 %12)
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @airo_perm, align 4
  %18 = load i32, i32* @airo_entry, align 4
  %19 = call %struct.proc_dir_entry* @proc_mkdir_mode(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %21 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %20, i32 0, i32 1
  store %struct.proc_dir_entry* %19, %struct.proc_dir_entry** %21, align 8
  %22 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 1
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %23, align 8
  %25 = icmp ne %struct.proc_dir_entry* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %159

29:                                               ; preds = %2
  %30 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %31 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %30, i32 0, i32 1
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %31, align 8
  %33 = load i32, i32* @proc_kuid, align 4
  %34 = load i32, i32* @proc_kgid, align 4
  %35 = call i32 @proc_set_user(%struct.proc_dir_entry* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @proc_perm, align 4
  %37 = and i32 292, %36
  %38 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %39 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %38, i32 0, i32 1
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37, %struct.proc_dir_entry* %40, i32* @proc_statsdelta_ops, %struct.net_device* %41)
  store %struct.proc_dir_entry* %42, %struct.proc_dir_entry** %6, align 8
  %43 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %44 = icmp ne %struct.proc_dir_entry* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %29
  br label %151

46:                                               ; preds = %29
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %48 = load i32, i32* @proc_kuid, align 4
  %49 = load i32, i32* @proc_kgid, align 4
  %50 = call i32 @proc_set_user(%struct.proc_dir_entry* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @proc_perm, align 4
  %52 = and i32 292, %51
  %53 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %54 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %53, i32 0, i32 1
  %55 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.proc_dir_entry* %55, i32* @proc_stats_ops, %struct.net_device* %56)
  store %struct.proc_dir_entry* %57, %struct.proc_dir_entry** %6, align 8
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %59 = icmp ne %struct.proc_dir_entry* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %151

61:                                               ; preds = %46
  %62 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %63 = load i32, i32* @proc_kuid, align 4
  %64 = load i32, i32* @proc_kgid, align 4
  %65 = call i32 @proc_set_user(%struct.proc_dir_entry* %62, i32 %63, i32 %64)
  %66 = load i32, i32* @proc_perm, align 4
  %67 = and i32 292, %66
  %68 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %69 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %68, i32 0, i32 1
  %70 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %67, %struct.proc_dir_entry* %70, i32* @proc_status_ops, %struct.net_device* %71)
  store %struct.proc_dir_entry* %72, %struct.proc_dir_entry** %6, align 8
  %73 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %74 = icmp ne %struct.proc_dir_entry* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %61
  br label %151

76:                                               ; preds = %61
  %77 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %78 = load i32, i32* @proc_kuid, align 4
  %79 = load i32, i32* @proc_kgid, align 4
  %80 = call i32 @proc_set_user(%struct.proc_dir_entry* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @proc_perm, align 4
  %82 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %83 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %82, i32 0, i32 1
  %84 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %81, %struct.proc_dir_entry* %84, i32* @proc_config_ops, %struct.net_device* %85)
  store %struct.proc_dir_entry* %86, %struct.proc_dir_entry** %6, align 8
  %87 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %88 = icmp ne %struct.proc_dir_entry* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %151

90:                                               ; preds = %76
  %91 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %92 = load i32, i32* @proc_kuid, align 4
  %93 = load i32, i32* @proc_kgid, align 4
  %94 = call i32 @proc_set_user(%struct.proc_dir_entry* %91, i32 %92, i32 %93)
  %95 = load i32, i32* @proc_perm, align 4
  %96 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %97 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %96, i32 0, i32 1
  %98 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %95, %struct.proc_dir_entry* %98, i32* @proc_SSID_ops, %struct.net_device* %99)
  store %struct.proc_dir_entry* %100, %struct.proc_dir_entry** %6, align 8
  %101 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %102 = icmp ne %struct.proc_dir_entry* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %90
  br label %151

104:                                              ; preds = %90
  %105 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %106 = load i32, i32* @proc_kuid, align 4
  %107 = load i32, i32* @proc_kgid, align 4
  %108 = call i32 @proc_set_user(%struct.proc_dir_entry* %105, i32 %106, i32 %107)
  %109 = load i32, i32* @proc_perm, align 4
  %110 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %111 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %110, i32 0, i32 1
  %112 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %111, align 8
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %109, %struct.proc_dir_entry* %112, i32* @proc_APList_ops, %struct.net_device* %113)
  store %struct.proc_dir_entry* %114, %struct.proc_dir_entry** %6, align 8
  %115 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %116 = icmp ne %struct.proc_dir_entry* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %104
  br label %151

118:                                              ; preds = %104
  %119 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %120 = load i32, i32* @proc_kuid, align 4
  %121 = load i32, i32* @proc_kgid, align 4
  %122 = call i32 @proc_set_user(%struct.proc_dir_entry* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @proc_perm, align 4
  %124 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %125 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %124, i32 0, i32 1
  %126 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %125, align 8
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %123, %struct.proc_dir_entry* %126, i32* @proc_BSSList_ops, %struct.net_device* %127)
  store %struct.proc_dir_entry* %128, %struct.proc_dir_entry** %6, align 8
  %129 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %130 = icmp ne %struct.proc_dir_entry* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %118
  br label %151

132:                                              ; preds = %118
  %133 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %134 = load i32, i32* @proc_kuid, align 4
  %135 = load i32, i32* @proc_kgid, align 4
  %136 = call i32 @proc_set_user(%struct.proc_dir_entry* %133, i32 %134, i32 %135)
  %137 = load i32, i32* @proc_perm, align 4
  %138 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %139 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %138, i32 0, i32 1
  %140 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %137, %struct.proc_dir_entry* %140, i32* @proc_wepkey_ops, %struct.net_device* %141)
  store %struct.proc_dir_entry* %142, %struct.proc_dir_entry** %6, align 8
  %143 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %144 = icmp ne %struct.proc_dir_entry* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %132
  br label %151

146:                                              ; preds = %132
  %147 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %148 = load i32, i32* @proc_kuid, align 4
  %149 = load i32, i32* @proc_kgid, align 4
  %150 = call i32 @proc_set_user(%struct.proc_dir_entry* %147, i32 %148, i32 %149)
  store i32 0, i32* %3, align 4
  br label %159

151:                                              ; preds = %145, %131, %117, %103, %89, %75, %60, %45
  %152 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %153 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @airo_entry, align 4
  %156 = call i32 @remove_proc_subtree(i32 %154, i32 %155)
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %151, %146, %26
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir_mode(i32, i32, i32) #1

declare dso_local i32 @proc_set_user(%struct.proc_dir_entry*, i32, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, %struct.proc_dir_entry*, i32*, %struct.net_device*) #1

declare dso_local i32 @remove_proc_subtree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
