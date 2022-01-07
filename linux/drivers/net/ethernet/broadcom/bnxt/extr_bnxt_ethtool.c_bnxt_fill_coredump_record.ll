; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fill_coredump_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fill_coredump_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bnxt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bnxt_coredump_record = type { i32, i64, i64, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cOrE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ethtool -w\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@sys_tz = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_coredump_record*, i32, i32, i32, i32)* @bnxt_fill_coredump_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fill_coredump_record(%struct.bnxt* %0, %struct.bnxt_coredump_record* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca %struct.bnxt_coredump_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tm, align 4
  store %struct.bnxt* %0, %struct.bnxt** %7, align 8
  store %struct.bnxt_coredump_record* %1, %struct.bnxt_coredump_record** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = call i32 (...) @ktime_get_real_seconds()
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @time64_to_tm(i32 %18, i32 0, %struct.tm* %16)
  %20 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %21 = call i32 @memset(%struct.bnxt_coredump_record* %20, i32 0, i32 240)
  %22 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %23 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %22, i32 0, i32 29
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %27 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %26, i32 0, i32 28
  store i64 0, i64* %27, align 8
  %28 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %29 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %28, i32 0, i32 27
  store i64 0, i64* %29, align 8
  %30 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %31 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %33 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %32, i32 0, i32 26
  store i64 0, i64* %33, align 8
  %34 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %35 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %34, i32 0, i32 25
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_5__* (...) @utsname()
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlcpy(i32 %36, i32 %39, i32 4)
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1900
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %46 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %45, i32 0, i32 24
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %52 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %51, i32 0, i32 23
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %57 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %56, i32 0, i32 22
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %62 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %61, i32 0, i32 21
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %66, i32 0, i32 20
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %72 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %71, i32 0, i32 19
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %76 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %75, i32 0, i32 18
  store i8* %74, i8** %76, align 8
  %77 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %78 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strcpy(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %84 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %83, i32 0, i32 16
  store i8* %82, i8** %84, align 8
  %85 = call %struct.TYPE_5__* (...) @utsname()
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sscanf(i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32* %15)
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %92 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %91, i32 0, i32 15
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %96 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %95, i32 0, i32 14
  store i8* %94, i8** %96, align 8
  %97 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %98 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.TYPE_5__* (...) @utsname()
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strlcpy(i32 %99, i32 %102, i32 32)
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @time64_to_tm(i32 %104, i32 0, %struct.tm* %16)
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1900
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %111 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %110, i32 0, i32 12
  store i8* %109, i8** %111, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %117 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %116, i32 0, i32 11
  store i8* %115, i8** %117, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %122 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %121, i32 0, i32 10
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %127 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %126, i32 0, i32 9
  store i8* %125, i8** %127, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %132 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %131, i32 0, i32 8
  store i8* %130, i8** %132, align 8
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %137 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_tz, i32 0, i32 0), align 4
  %139 = mul nsw i32 %138, 60
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %142 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  %143 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %144 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 16
  %147 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %148 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 8
  %152 = or i32 %146, %151
  %153 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %154 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %152, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %160 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %162 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %166 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %168 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  %169 = load %struct.bnxt_coredump_record*, %struct.bnxt_coredump_record** %8, align 8
  %170 = getelementptr inbounds %struct.bnxt_coredump_record, %struct.bnxt_coredump_record* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  ret void
}

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i32 @memset(%struct.bnxt_coredump_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @utsname(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
