; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_info_req = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_pf = type { i32, i32 }
%struct.nfp_nsp = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"nfp\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"assembly.vendor\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"assembly.partno\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"assembly.serial\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"can't access NSP\00", align 1
@NFP_NSP_VERSION_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)* @nfp_devlink_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_info_get(%struct.devlink* %0, %struct.devlink_info_req* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_info_req*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nfp_pf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nfp_nsp*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_info_req* %1, %struct.devlink_info_req** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.devlink*, %struct.devlink** %5, align 8
  %17 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %16)
  store %struct.nfp_pf* %17, %struct.nfp_pf** %8, align 8
  store i8* null, i8** %13, align 8
  %18 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %19 = call i32 @devlink_info_driver_name_put(%struct.devlink_info_req* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %4, align 4
  br label %150

24:                                               ; preds = %3
  %25 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %26 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @nfp_hwinfo_lookup(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %10, align 8
  %29 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %30 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @nfp_hwinfo_lookup(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %11, align 8
  %33 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %34 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @nfp_hwinfo_lookup(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %84

39:                                               ; preds = %24
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %47, %49
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = add nsw i64 %50, %52
  %54 = add nsw i64 %53, 1
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kmalloc(i64 %54, i32 %55)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %150

62:                                               ; preds = %45
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strcat(i8* %65, i8* %66)
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strcat(i8* %68, i8* %69)
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strcat(i8* %71, i8* %72)
  %74 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @devlink_info_serial_number_put(%struct.devlink_info_req* %74, i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %42, %39, %24
  %85 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %86 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %87)
  store %struct.nfp_nsp* %88, %struct.nfp_nsp** %12, align 8
  %89 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %90 = call i64 @IS_ERR(%struct.nfp_nsp* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %94 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %96 = call i32 @PTR_ERR(%struct.nfp_nsp* %95)
  store i32 %96, i32* %4, align 4
  br label %150

97:                                               ; preds = %84
  %98 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %99 = call i64 @nfp_nsp_has_versions(%struct.nfp_nsp* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %97
  %102 = load i32, i32* @NFP_NSP_VERSION_BUFSZ, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kzalloc(i32 %102, i32 %103)
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %146

110:                                              ; preds = %101
  %111 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i32, i32* @NFP_NSP_VERSION_BUFSZ, align 4
  %114 = call i32 @nfp_nsp_versions(%struct.nfp_nsp* %111, i8* %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %143

118:                                              ; preds = %110
  %119 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* @NFP_NSP_VERSION_BUFSZ, align 4
  %122 = call i32 @nfp_devlink_versions_get_nsp(%struct.devlink_info_req* %119, i32 0, i8* %120, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %143

126:                                              ; preds = %118
  %127 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* @NFP_NSP_VERSION_BUFSZ, align 4
  %130 = call i32 @nfp_devlink_versions_get_nsp(%struct.devlink_info_req* %127, i32 1, i8* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %143

134:                                              ; preds = %126
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @kfree(i8* %135)
  br label %137

137:                                              ; preds = %134, %97
  %138 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %139 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %138)
  %140 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %141 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %142 = call i32 @nfp_devlink_versions_get_hwinfo(%struct.nfp_pf* %140, %struct.devlink_info_req* %141)
  store i32 %142, i32* %4, align 4
  br label %150

143:                                              ; preds = %133, %125, %117
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @kfree(i8* %144)
  br label %146

146:                                              ; preds = %143, %107
  %147 = load %struct.nfp_nsp*, %struct.nfp_nsp** %12, align 8
  %148 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %137, %92, %81, %59, %22
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_info_driver_name_put(%struct.devlink_info_req*, i8*) #1

declare dso_local i8* @nfp_hwinfo_lookup(i32, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @devlink_info_serial_number_put(%struct.devlink_info_req*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i64 @nfp_nsp_has_versions(%struct.nfp_nsp*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_nsp_versions(%struct.nfp_nsp*, i8*, i32) #1

declare dso_local i32 @nfp_devlink_versions_get_nsp(%struct.devlink_info_req*, i32, i8*, i32) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_devlink_versions_get_hwinfo(%struct.nfp_pf*, %struct.devlink_info_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
