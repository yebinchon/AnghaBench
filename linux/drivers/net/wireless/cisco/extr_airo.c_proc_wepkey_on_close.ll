; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_wepkey_on_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_wepkey_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i8*, i32 }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"failed to set WEP transmit index to %d: %d.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"WepKey passed invalid key index\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to set WEP key at index %d: %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_wepkey_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_wepkey_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.airo_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.net_device* @PDE_DATA(%struct.inode* %13)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.airo_info*, %struct.airo_info** %16, align 8
  store %struct.airo_info* %17, %struct.airo_info** %7, align 8
  store i8 0, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 16)
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.proc_data*, %struct.proc_data** %21, align 8
  store %struct.proc_data* %22, %struct.proc_data** %5, align 8
  %23 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %24 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %183

28:                                               ; preds = %2
  %29 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %30 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %94

36:                                               ; preds = %28
  %37 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %38 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 51
  br i1 %43, label %44, label %94

44:                                               ; preds = %36
  %45 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %46 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %54 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %94

60:                                               ; preds = %52, %44
  %61 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %62 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %11, align 1
  %69 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %70 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %93

76:                                               ; preds = %60
  %77 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %78 = load i8, i8* %11, align 1
  %79 = call i32 @set_wep_tx_idx(%struct.airo_info* %77, i8 signext %78, i32 1, i32 1)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %84 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8, i8* %11, align 1
  %89 = sext i8 %88 to i32
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32, i8*, ...) @airo_print_err(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %76
  br label %183

93:                                               ; preds = %60
  store i32 2, i32* %12, align 4
  br label %101

94:                                               ; preds = %52, %36, %28
  %95 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %96 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @airo_print_err(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %183

101:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %161, %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 48
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %107 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %105, %102
  %118 = phi i1 [ false, %102 ], [ %116, %105 ]
  br i1 %118, label %119, label %164

119:                                              ; preds = %117
  %120 = load i32, i32* %8, align 4
  %121 = srem i32 %120, 3
  switch i32 %121, label %160 [
    i32 0, label %122
    i32 1, label %140
  ]

122:                                              ; preds = %119
  %123 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %124 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = call signext i8 @hex_to_bin(i8 signext %131)
  %133 = sext i8 %132 to i32
  %134 = shl i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = load i32, i32* %8, align 4
  %137 = sdiv i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %138
  store i8 %135, i8* %139, align 1
  br label %160

140:                                              ; preds = %119
  %141 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %142 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = call signext i8 @hex_to_bin(i8 signext %149)
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* %8, align 4
  %153 = sdiv i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = or i32 %157, %151
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  br label %160

160:                                              ; preds = %119, %140, %122
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %102

164:                                              ; preds = %117
  %165 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %166 = load i8, i8* %11, align 1
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %168 = load i32, i32* %8, align 4
  %169 = sdiv i32 %168, 3
  %170 = call i32 @set_wep_key(%struct.airo_info* %165, i8 signext %166, i8* %167, i32 %169, i32 1, i32 1)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %164
  %174 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %175 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i8, i8* %11, align 1
  %180 = sext i8 %179 to i32
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (i32, i8*, ...) @airo_print_err(i32 %178, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %27, %92, %94, %173, %164
  ret void
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_wep_tx_idx(%struct.airo_info*, i8 signext, i32, i32) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local signext i8 @hex_to_bin(i8 signext) #1

declare dso_local i32 @set_wep_key(%struct.airo_info*, i8 signext, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
