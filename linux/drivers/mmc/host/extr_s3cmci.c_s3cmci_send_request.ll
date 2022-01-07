; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.s3cmci_host = type { i32, i64, i64, i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_command = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@S3C2410_SDICMDSTAT = common dso_local global i64 0, align 8
@S3C2410_SDIDSTA = common dso_local global i64 0, align 8
@S3C2410_SDIFSTA = common dso_local global i64 0, align 8
@dbg_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"setup data error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"data prepare error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @s3cmci_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_send_request(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.s3cmci_host* %8, %struct.s3cmci_host** %3, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 4
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  store %struct.mmc_request* %11, %struct.mmc_request** %4, align 8
  %12 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %13 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 1
  %19 = load %struct.mmc_command*, %struct.mmc_command** %18, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.mmc_command*, %struct.mmc_command** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi %struct.mmc_command* [ %19, %16 ], [ %23, %20 ]
  store %struct.mmc_command* %25, %struct.mmc_command** %5, align 8
  %26 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %31 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %32 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %33 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @prepare_dbgmsg(%struct.s3cmci_host* %30, %struct.mmc_command* %31, i64 %34)
  %36 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %37 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S3C2410_SDICMDSTAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 -1, i64 %40)
  %42 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %43 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S3C2410_SDIDSTA, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 -1, i64 %46)
  %48 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %49 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @S3C2410_SDIFSTA, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 -1, i64 %52)
  %54 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %122

58:                                               ; preds = %24
  %59 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %60 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @s3cmci_setup_data(%struct.s3cmci_host* %59, %struct.TYPE_4__* %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %65 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %58
  %71 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %72 = load i32, i32* @dbg_err, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dbg(%struct.s3cmci_host* %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %84 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %85 = call i32 @mmc_request_done(%struct.mmc_host* %83, %struct.mmc_request* %84)
  br label %128

86:                                               ; preds = %58
  %87 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %88 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %92 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @s3cmci_prepare_dma(%struct.s3cmci_host* %91, %struct.TYPE_4__* %94)
  store i32 %95, i32* %6, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %98 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @s3cmci_prepare_pio(%struct.s3cmci_host* %97, %struct.TYPE_4__* %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %107 = load i32, i32* @dbg_err, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @dbg(%struct.s3cmci_host* %106, i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %112 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %115 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %119 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %120 = call i32 @mmc_request_done(%struct.mmc_host* %118, %struct.mmc_request* %119)
  br label %128

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %24
  %123 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %124 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %125 = call i32 @s3cmci_send_command(%struct.s3cmci_host* %123, %struct.mmc_command* %124)
  %126 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %127 = call i32 @s3cmci_enable_irq(%struct.s3cmci_host* %126, i32 1)
  br label %128

128:                                              ; preds = %122, %105, %70
  ret void
}

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @prepare_dbgmsg(%struct.s3cmci_host*, %struct.mmc_command*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3cmci_setup_data(%struct.s3cmci_host*, %struct.TYPE_4__*) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i64 @s3cmci_host_usedma(%struct.s3cmci_host*) #1

declare dso_local i32 @s3cmci_prepare_dma(%struct.s3cmci_host*, %struct.TYPE_4__*) #1

declare dso_local i32 @s3cmci_prepare_pio(%struct.s3cmci_host*, %struct.TYPE_4__*) #1

declare dso_local i32 @s3cmci_send_command(%struct.s3cmci_host*, %struct.mmc_command*) #1

declare dso_local i32 @s3cmci_enable_irq(%struct.s3cmci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
