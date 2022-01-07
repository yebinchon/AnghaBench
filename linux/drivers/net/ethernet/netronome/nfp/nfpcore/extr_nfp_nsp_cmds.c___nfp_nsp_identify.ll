; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_cmds.c___nfp_nsp_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_cmds.c___nfp_nsp_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp_identify = type { i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.nfp_nsp = type { i32 }
%struct.nsp_identify = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"reading bsp version failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_nsp_identify* @__nfp_nsp_identify(%struct.nfp_nsp* %0) #0 {
  %2 = alloca %struct.nfp_nsp_identify*, align 8
  %3 = alloca %struct.nfp_nsp*, align 8
  %4 = alloca %struct.nfp_nsp_identify*, align 8
  %5 = alloca %struct.nsp_identify*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %3, align 8
  store %struct.nfp_nsp_identify* null, %struct.nfp_nsp_identify** %4, align 8
  %7 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %8 = call i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp* %7)
  %9 = icmp slt i32 %8, 15
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.nfp_nsp_identify* null, %struct.nfp_nsp_identify** %2, align 8
  br label %96

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 36, i32 %12)
  %14 = bitcast i8* %13 to %struct.nsp_identify*
  store %struct.nsp_identify* %14, %struct.nsp_identify** %5, align 8
  %15 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %16 = icmp ne %struct.nsp_identify* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.nfp_nsp_identify* null, %struct.nfp_nsp_identify** %2, align 8
  br label %96

18:                                               ; preds = %11
  %19 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %20 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %21 = call i32 @nfp_nsp_read_identify(%struct.nfp_nsp* %19, %struct.nsp_identify* %20, i32 36)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %26 = call i32 @nfp_nsp_cpp(%struct.nfp_nsp* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nfp_err(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %92

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 56, i32 %30)
  %32 = bitcast i8* %31 to %struct.nfp_nsp_identify*
  store %struct.nfp_nsp_identify* %32, %struct.nfp_nsp_identify** %4, align 8
  %33 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %34 = icmp ne %struct.nfp_nsp_identify* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %92

36:                                               ; preds = %29
  %37 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %38 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %41 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i8* %39, i32 %42, i32 8)
  %44 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %45 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 7
  store i8 0, i8* %47, align 1
  %48 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %49 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %52 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %54 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %57 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %59 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %62 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %64 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %67 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %69 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le16_to_cpu(i32 %70)
  %72 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %73 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %75 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %79 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %81 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %85 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %87 = getelementptr inbounds %struct.nsp_identify, %struct.nsp_identify* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le64_to_cpu(i32 %88)
  %90 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  %91 = getelementptr inbounds %struct.nfp_nsp_identify, %struct.nfp_nsp_identify* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %36, %35, %24
  %93 = load %struct.nsp_identify*, %struct.nsp_identify** %5, align 8
  %94 = call i32 @kfree(%struct.nsp_identify* %93)
  %95 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %4, align 8
  store %struct.nfp_nsp_identify* %95, %struct.nfp_nsp_identify** %2, align 8
  br label %96

96:                                               ; preds = %92, %17, %10
  %97 = load %struct.nfp_nsp_identify*, %struct.nfp_nsp_identify** %2, align 8
  ret %struct.nfp_nsp_identify* %97
}

declare dso_local i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_nsp_read_identify(%struct.nfp_nsp*, %struct.nsp_identify*, i32) #1

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

declare dso_local i32 @nfp_nsp_cpp(%struct.nfp_nsp*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.nsp_identify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
