; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_tdls_oper }
%struct.host_cmd_ds_tdls_oper = type { i32, i32, i32 }
%struct.mwifiex_sta_node = type { i8* }

@TDLS_ERR_LINK_NONEXISTENT = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TDLS link delete for %pM failed: reason %d\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"TDLS link delete for %pM successful\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"TDLS link creation for %pM failed: reason %d\00", align 1
@TDLS_ERR_LINK_EXISTS = common dso_local global i32 0, align 4
@TDLS_SETUP_FAILURE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"TDLS link creation for %pM successful\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"TDLS link config for %pM failed, reason %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"TDLS link config for %pM successful\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Unknown TDLS command action response %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_tdls_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_tdls_oper(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_tdls_oper*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.host_cmd_ds_tdls_oper* %12, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %13 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %21, i32 %24)
  store %struct.mwifiex_sta_node* %25, %struct.mwifiex_sta_node** %9, align 8
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %132 [
    i32 128, label %27
    i32 129, label %68
    i32 130, label %102
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %32 = icmp ne %struct.mwifiex_sta_node* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TDLS_ERR_LINK_NONEXISTENT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33, %30
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSG, align 4
  %42 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %43 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %40, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %57

47:                                               ; preds = %33
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ERROR, align 4
  %52 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %53 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %37
  br label %67

58:                                               ; preds = %27
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSG, align 4
  %63 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %64 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %61, i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %58, %57
  br label %139

68:                                               ; preds = %2
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ERROR, align 4
  %76 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %77 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %74, i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %82 = icmp ne %struct.mwifiex_sta_node* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @TDLS_ERR_LINK_EXISTS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8*, i8** @TDLS_SETUP_FAILURE, align 8
  %89 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %90 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %87, %83, %71
  br label %101

92:                                               ; preds = %68
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MSG, align 4
  %97 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %98 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %95, i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92, %91
  br label %139

102:                                              ; preds = %2
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %107 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ERROR, align 4
  %110 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %111 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %108, i32 %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %116 = icmp ne %struct.mwifiex_sta_node* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load i8*, i8** @TDLS_SETUP_FAILURE, align 8
  %119 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %9, align 8
  %120 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %105
  br label %131

122:                                              ; preds = %102
  %123 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %124 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MSG, align 4
  %127 = load %struct.host_cmd_ds_tdls_oper*, %struct.host_cmd_ds_tdls_oper** %6, align 8
  %128 = getelementptr inbounds %struct.host_cmd_ds_tdls_oper, %struct.host_cmd_ds_tdls_oper* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %125, i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %122, %121
  br label %139

132:                                              ; preds = %2
  %133 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %134 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ERROR, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i32, i32, i8*, i32, ...) @mwifiex_dbg(i32 %135, i32 %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  store i32 -1, i32* %3, align 4
  br label %140

139:                                              ; preds = %131, %101, %67
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %132
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
