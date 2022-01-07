; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_load_fw_extended_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_load_fw_extended_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }

@nfp_nsp_load_fw_extended_msg.major_msg = internal constant [3 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [28 x i8] c"Firmware from driver loaded\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Firmware from flash loaded\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Firmware loading failure\00", align 1
@nfp_nsp_load_fw_extended_msg.minor_msg = internal constant [15 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no named partition on flash\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"error reading from flash\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"can not deflate\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"not a trusted file\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"can not parse FW file\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"MIP not found in FW file\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"null firmware name in MIP\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"FW version none\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"FW build number none\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"no FW selection policy HWInfo key found\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"static FW selection policy\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"FW version has precedence\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"different FW application load requested\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"development build\00", align 1
@NFP_FW_LOAD_RET_MAJOR = common dso_local global i32 0, align 4
@NFP_FW_LOAD_RET_MINOR = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"FW loading status: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"%s, reason code: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s%c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_nsp*, i32)* @nfp_nsp_load_fw_extended_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_nsp_load_fw_extended_msg(%struct.nfp_nsp* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_nsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NFP_FW_LOAD_RET_MAJOR, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @FIELD_GET(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @NFP_FW_LOAD_RET_MINOR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FIELD_GET(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %15 = call i32 @nfp_nsp_has_stored_fw_load(%struct.nfp_nsp* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %84

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** @KERN_DEBUG, align 8
  store i8* %28, i8** %7, align 8
  br label %37

29:                                               ; preds = %24, %18
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** @KERN_ERR, align 8
  store i8* %33, i8** %7, align 8
  br label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @KERN_INFO, align 8
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @nfp_nsp_load_fw_extended_msg.major_msg, i64 0, i64 0))
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %44 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @nfp_printk(i8* %42, i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %48)
  br label %84

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @nfp_nsp_load_fw_extended_msg.minor_msg, i64 0, i64 0))
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %57 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i8*], [3 x i8*]* @nfp_nsp_load_fw_extended_msg.major_msg, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @nfp_printk(i8* %55, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %62, i32 %63)
  br label %83

65:                                               ; preds = %50
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %68 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* @nfp_nsp_load_fw_extended_msg.major_msg, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 44, i32 46
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [15 x i8*], [15 x i8*]* @nfp_nsp_load_fw_extended_msg.minor_msg, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i32, i8*, i8*, ...) @nfp_printk(i8* %66, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %73, i32 %77, i8* %81)
  br label %83

83:                                               ; preds = %65, %54
  br label %84

84:                                               ; preds = %17, %83, %41
  ret void
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_nsp_has_stored_fw_load(%struct.nfp_nsp*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @nfp_printk(i8*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
