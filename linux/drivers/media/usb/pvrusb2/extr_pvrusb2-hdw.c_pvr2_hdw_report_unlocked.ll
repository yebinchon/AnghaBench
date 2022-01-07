; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_report_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_report_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pvr2_stream_stats = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"driver:%s%s%s%s%s <mode=%s>\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" <ok>\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" <fail>\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" <init>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" <uninitialized>\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" <disconnected>\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" <connected>\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" <tripped>\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" <no decoder>\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pipeline:%s%s%s%s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" <idle>\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" <configok>\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" <stale>\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" <req>\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" <pause>\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"worker:%s%s%s%s%s%s%s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"<decode:run>\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c" <decode:start>\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c" <decode:stop>\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c" <decode:quiescent>\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c" <encode:init>\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c" <encode:run>\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c" <encode:firstrun>\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c" <encode:stop>\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c" <encode:virgin>\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c" <encode:configok>\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c" <encode:waitok>\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c" <usb:run>\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" <usb:stop>\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c" <pathway:ok>\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"state: %s\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Hardware supported inputs: \00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"; allowed inputs: \00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"Bytes streamed=%u URBs: queued=%u idle=%u ready=%u processed=%u failed=%u\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"ir scheme: id=%d %s\00", align 1
@ir_scheme_names = common dso_local global i8** null, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i8*, i32)* @pvr2_hdw_report_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_report_unlocked(%struct.pvr2_hdw* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_hdw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pvr2_stream_stats, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %272 [
    i32 0, label %15
    i32 1, label %53
    i32 2, label %81
    i32 3, label %163
    i32 4, label %171
    i32 5, label %225
    i32 6, label %251
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 24
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 23
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 22
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %37 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %36, i32 0, i32 21
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 20
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %48 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %49 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %48, i32 0, i32 19
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pvr2_pathway_state_name(i32 %50)
  %52 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %29, i8* %35, i8* %41, i8* %47, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %274

53:                                               ; preds = %4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %57 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %56, i32 0, i32 18
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %62 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %63 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %80 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %61, i8* %67, i8* %73, i8* %79)
  store i32 %80, i32* %5, align 4
  br label %274

81:                                               ; preds = %4
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %85 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %90 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)
  br label %102

95:                                               ; preds = %81
  %96 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %97 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)
  br label %102

102:                                              ; preds = %95, %88
  %103 = phi i8* [ %94, %88 ], [ %101, %95 ]
  %104 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %105 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %110 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %111 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)
  %116 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %117 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %102
  %121 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %122 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0)
  br label %134

127:                                              ; preds = %102
  %128 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %129 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)
  br label %134

134:                                              ; preds = %127, %120
  %135 = phi i8* [ %126, %120 ], [ %133, %127 ]
  %136 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %137 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %148

141:                                              ; preds = %134
  %142 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %143 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0)
  br label %148

148:                                              ; preds = %141, %140
  %149 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), %140 ], [ %147, %141 ]
  %150 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %151 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)
  %156 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %157 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %162 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %103, i8* %109, i8* %115, i8* %135, i8* %149, i8* %155, i8* %161)
  store i32 %162, i32* %5, align 4
  br label %274

163:                                              ; preds = %4
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %167 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @pvr2_get_state_name(i32 %168)
  %170 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %164, i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32 %169)
  store i32 %170, i32* %5, align 4
  br label %274

171:                                              ; preds = %4
  store i32 0, i32* %10, align 4
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %172, i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0))
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %179 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sub i32 %185, %186
  %188 = call i32 @print_input_mask(i32 %180, i8* %184, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %192 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %195 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %223

198:                                              ; preds = %171
  %199 = load i8*, i8** %8, align 8
  %200 = load i32, i32* %10, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = sub i32 %203, %204
  %206 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %202, i32 %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %208, %207
  store i32 %209, i32* %10, align 4
  %210 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %211 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %10, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = sub i32 %217, %218
  %220 = call i32 @print_input_mask(i32 %212, i8* %216, i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = add i32 %221, %220
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %198, %171
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %5, align 4
  br label %274

225:                                              ; preds = %4
  %226 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %227 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  br label %273

231:                                              ; preds = %225
  %232 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %233 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @pvr2_stream_get_stats(i32 %234, %struct.pvr2_stream_stats* %12, i32 0)
  %236 = load i8*, i8** %8, align 8
  %237 = load i32, i32* %9, align 4
  %238 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.pvr2_stream_stats, %struct.pvr2_stream_stats* %12, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %236, i32 %237, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.34, i64 0, i64 0), i32 %239, i32 %241, i32 %243, i32 %245, i32 %247, i32 %249)
  store i32 %250, i32* %5, align 4
  br label %274

251:                                              ; preds = %4
  %252 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %253 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %13, align 4
  %255 = load i8*, i8** %8, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i8**, i8*** @ir_scheme_names, align 8
  %260 = call i32 @ARRAY_SIZE(i8** %259)
  %261 = icmp uge i32 %258, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  br label %269

263:                                              ; preds = %251
  %264 = load i8**, i8*** @ir_scheme_names, align 8
  %265 = load i32, i32* %13, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  br label %269

269:                                              ; preds = %263, %262
  %270 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %262 ], [ %268, %263 ]
  %271 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %255, i32 %256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 %257, i8* %270)
  store i32 %271, i32* %5, align 4
  br label %274

272:                                              ; preds = %4
  br label %273

273:                                              ; preds = %272, %230
  store i32 0, i32* %5, align 4
  br label %274

274:                                              ; preds = %273, %269, %231, %223, %163, %148, %53, %15
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pvr2_pathway_state_name(i32) #1

declare dso_local i32 @pvr2_get_state_name(i32) #1

declare dso_local i32 @print_input_mask(i32, i8*, i32) #1

declare dso_local i32 @pvr2_stream_get_stats(i32, %struct.pvr2_stream_stats*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
